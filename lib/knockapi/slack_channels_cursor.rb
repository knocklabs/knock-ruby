# frozen_string_literal: true

module Knockapi
  # @example
  # ```ruby
  # if slack_channels_cursor.has_next?
  #   slack_channels_cursor = slack_channels_cursor.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # slack_channels_cursor.auto_paging_each do |slack|
  #   puts(slack)
  # end
  # ```
  #
  # @example
  # ```ruby
  # slacks = slack_channels_cursor.to_enum.take(2)
  #
  # slacks => Array
  # ```
  class SlackChannelsCursor
    include Knockapi::BasePage

    # @return [String]
    attr_accessor :next_cursor

    # @return [Array<Object>]
    attr_accessor :slack_channels

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
      in {next_cursor: String | nil => next_cursor}
        @next_cursor = next_cursor
      else
      end

      case page_data
      in {slack_channels: Array | nil => slack_channels}
        @slack_channels = slack_channels&.map { model.coerce(_1) }
      else
      end
    end
    # rubocop:enable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page?
      !next_cursor.nil?
    end

    # @raise [Knockapi::HTTP::Error]
    # @return [Knockapi::SlackChannelsCursor]
    #
    def next_page
      unless next_page?
        raise RuntimeError.new("No more pages available. Please check #next_page? before calling ##{__method__}")
      end

      req = Knockapi::Util.deep_merge(@req, {query: {"query_options.cursor": next_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.slack_channels&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} next_cursor=#{next_cursor.inspect} slack_channels=#{slack_channels.inspect}>"
    end
  end
end
