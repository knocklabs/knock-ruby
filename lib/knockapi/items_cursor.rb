# frozen_string_literal: true

module Knockapi
  # @example
  # ```ruby
  # if items_cursor.has_next?
  #   page = items_cursor.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # items_cursor.auto_paging_each do |item|
  # #   item ...
  # end
  # ```
  #
  # @example
  # ```ruby
  # items = items_cursor.to_enum.take(2)
  #
  # items => Array
  # ```
  class ItemsCursor
    include Knockapi::BasePage

    # @return [Array<Object>]
    attr_accessor :items

    # @return [PageInfo]
    attr_accessor :page_info

    # rubocop:disable Lint/UnusedMethodArgument
    # @private
    #
    # @param client [Knockapi::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    #
    def initialize(client:, req:, headers:, page_data:)
      @client = client
      @req = req
      model = req.fetch(:model)

      case page_data
      in {items: Array | nil => items}
        @items = items&.map { model.coerce(_1) }
      else
      end

      case page_data
      in {page_info: Hash | nil => page_info}
        @page_info = Knockapi::ItemsCursor::PageInfo.coerce(page_info)
      else
      end
    end
    # rubocop:enable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page?
      !page_info&.after.nil?
    end

    # @raise [Knockapi::HTTP::Error]
    # @return [Knockapi::ItemsCursor]
    #
    def next_page
      unless next_page?
        raise RuntimeError.new("No more pages available; please check #next_page? before calling #next_page")
      end

      req = Knockapi::Util.deep_merge(@req, {query: {after: page_info&.after}})
      @client.request(req)
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.items&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} items=#{items.inspect} page_info=#{page_info.inspect}>"
    end

    class PageInfo < Knockapi::BaseModel
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

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
