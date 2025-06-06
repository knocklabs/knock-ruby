# frozen_string_literal: true

module Knockapi
  module Internal
    # @generic Elem
    #
    # @example
    #   if items_cursor.has_next?
    #     items_cursor = items_cursor.next_page
    #   end
    #
    # @example
    #   items_cursor.auto_paging_each do |user|
    #     puts(user)
    #   end
    class ItemsCursor
      include Knockapi::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :items

      # @return [PageInfo]
      attr_accessor :page_info

      # @return [Boolean]
      def next_page?
        !items.to_a.empty? && !page_info&.after.to_s.empty?
      end

      # @raise [Knockapi::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Knockapi::Internal::Util.deep_merge(@req, {query: {after: page_info&.after}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.items&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Knockapi::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {items: Array => items}
          @items = items.map { Knockapi::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {page_info: Hash | nil => page_info}
          @page_info =
            Knockapi::Internal::Type::Converter.coerce(Knockapi::Internal::ItemsCursor::PageInfo, page_info)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Knockapi::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class PageInfo < Knockapi::Internal::Type::BaseModel
        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!method initialize(after: nil)
        #   @param after [String]
      end
    end
  end
end
