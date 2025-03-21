# frozen_string_literal: true

module Knockapi
  # @example
  #   if entries_cursor.has_next?
  #     entries_cursor = entries_cursor.next_page
  #   end
  #
  # @example
  #   entries_cursor.auto_paging_each do |user|
  #     puts(user)
  #   end
  #
  # @example
  #   users =
  #     entries_cursor
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   users => Array
  class EntriesCursor
    include Knockapi::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :entries

    # @return [PageInfo]
    attr_accessor :page_info

    # @api private
    #
    # @param client [Knockapi::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {entries: Array | nil => entries}
        @entries = entries&.map { model.coerce(_1) }
      else
      end

      case page_data
      in {page_info: Hash | nil => page_info}
        @page_info = Knockapi::EntriesCursor::PageInfo.coerce(page_info)
      else
      end
    end

    # @return [Boolean]
    def next_page?
      !page_info&.after.nil?
    end

    # @raise [Knockapi::HTTP::Error]
    # @return [Knockapi::EntriesCursor]
    def next_page
      unless next_page?
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
      end

      req = Knockapi::Util.deep_merge(@req, {query: {after: page_info&.after}})
      @client.request(req)
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.entries&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} entries=#{entries.inspect} page_info=#{page_info.inspect}>"
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
