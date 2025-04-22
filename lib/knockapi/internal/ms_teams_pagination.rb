# frozen_string_literal: true

module Knockapi
  module Internal
    # @generic Elem
    #
    # @example
    #   if ms_teams_pagination.has_next?
    #     ms_teams_pagination = ms_teams_pagination.next_page
    #   end
    #
    # @example
    #   ms_teams_pagination.auto_paging_each do |ms_team|
    #     puts(ms_team)
    #   end
    class MsTeamsPagination
      include Knockapi::Internal::Type::BasePage

      # @return [String]
      attr_accessor :skip_token

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :ms_teams_teams

      # @return [Boolean]
      def next_page?
        !skip_token.nil?
      end

      # @raise [Knockapi::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Knockapi::Internal::Util.deep_merge(@req, {query: {"query_options.$skiptoken": skip_token}})
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
          page.ms_teams_teams&.each(&blk)

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

        @skip_token = page_data[:skip_token]
        case page_data
        in {ms_teams_teams: Array | nil => ms_teams_teams}
          @ms_teams_teams = ms_teams_teams&.map { Knockapi::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Knockapi::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} skip_token=#{skip_token.inspect}>"
      end
    end
  end
end
