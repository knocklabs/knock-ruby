# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class SlackListChannelsParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference
        #
        #   @return [String]
        required :access_token_object, String

        # @!attribute [r] query_options
        #
        #   @return [Knock::Models::Providers::SlackListChannelsParams::QueryOptions, nil]
        optional :query_options, -> { Knock::Models::Providers::SlackListChannelsParams::QueryOptions }

        # @!parse
        #   # @return [Knock::Models::Providers::SlackListChannelsParams::QueryOptions]
        #   attr_writer :query_options

        # @!parse
        #   # @param access_token_object [String]
        #   # @param query_options [Knock::Models::Providers::SlackListChannelsParams::QueryOptions]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(access_token_object:, query_options: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class QueryOptions < Knock::BaseModel
          # @!attribute [r] cursor
          #   A cursor to paginate through the channels
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!parse
          #   # @return [String]
          #   attr_writer :cursor

          # @!attribute [r] exclude_archived
          #   Whether to exclude archived channels
          #
          #   @return [Boolean, nil]
          optional :exclude_archived, Knock::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :exclude_archived

          # @!attribute [r] limit
          #   The number of channels to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] team_id
          #   The ID of the Slack team to get channels for
          #
          #   @return [String, nil]
          optional :team_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :team_id

          # @!attribute [r] types
          #   The types of channels to return (comma separated list)
          #
          #   @return [String, nil]
          optional :types, String

          # @!parse
          #   # @return [String]
          #   attr_writer :types

          # @!parse
          #   # @param cursor [String]
          #   # @param exclude_archived [Boolean]
          #   # @param limit [Integer]
          #   # @param team_id [String]
          #   # @param types [String]
          #   #
          #   def initialize(cursor: nil, exclude_archived: nil, limit: nil, team_id: nil, types: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
