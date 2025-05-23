# frozen_string_literal: true

module Knockapi
  module Internal
    # @generic Elem
    #
    # @example
    #   if slack_channels_cursor.has_next?
    #     slack_channels_cursor = slack_channels_cursor.next_page
    #   end
    #
    # @example
    #   slack_channels_cursor.auto_paging_each do |slack|
    #     puts(slack)
    #   end
    class SlackChannelsCursor
      include Knockapi::Internal::Type::BasePage

      # @return [String]
      attr_accessor :next_cursor

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :slack_channels

      # @return [Boolean]
      def next_page?
        !slack_channels.to_a.empty? && !next_cursor.to_s.empty?
      end

      # @raise [Knockapi::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Knockapi::Internal::Util.deep_merge(@req, {query: {"query_options.cursor": next_cursor}})
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
          page.slack_channels&.each(&blk)

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

        @next_cursor = page_data[:next_cursor]
        case page_data
        in {slack_channels: Array => slack_channels}
          @slack_channels = slack_channels.map { Knockapi::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Knockapi::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} next_cursor=#{next_cursor.inspect}>"
      end
    end
  end
end
