# frozen_string_literal: true

module Knockapi
  module Internal
    # @example
    #   if items_cursor.has_next?
    #     items_cursor = items_cursor.next_page
    #   end
    #
    # @example
    #   items_cursor.auto_paging_each do |message|
    #     puts(message)
    #   end
    class ItemsCursor
      include Knockapi::Internal::Type::BasePage

      # @return [Array<Object>, nil]
      attr_accessor :items

      # @return [PageInfo]
      attr_accessor :page_info

      # @api private
      #
      # @param client [Knockapi::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super
        model = req.fetch(:model)

        case page_data
        in {items: Array | nil => items}
          @items = items&.map { Knockapi::Internal::Type::Converter.coerce(model, _1) }
        else
        end

        case page_data
        in {page_info: Hash | nil => page_info}
          @page_info =
            Knockapi::Internal::Type::Converter.coerce(Knockapi::Internal::ItemsCursor::PageInfo, page_info)
        else
        end
      end

      # @return [Boolean]
      def next_page?
        !page_info&.after.nil?
      end

      # @raise [Knockapi::HTTP::Error]
      # @return [Knockapi::Internal::ItemsCursor]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Knockapi::Internal::Util.deep_merge(@req, {query: {after: page_info&.after}})
        @client.request(req)
      end

      # @param blk [Proc]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end
        page = self
        loop do
          page.items&.each { blk.call(_1) }
          break unless page.next_page?
          page = page.next_page
        end
      end

      # @return [String]
      def inspect
        "#<#{self.class}:0x#{object_id.to_s(16)} items=#{items.inspect} page_info=#{page_info.inspect}>"
      end

      class PageInfo < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] after
        #
        #   @return [String, nil]
        optional :after, String

        # @!parse
        #   # @return [String]
        #   attr_writer :after

        # @!parse
        #   # @param after [String]
        #   #
        #   def initialize(after: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
