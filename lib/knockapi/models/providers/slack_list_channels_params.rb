# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#list_channels
      class SlackListChannelsParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference.
        #
        #   @return [String]
        required :access_token_object, String

        # @!attribute [r] query_options
        #
        #   @return [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions }

        # @!parse
        #   # @return [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions]
        #   attr_writer :query_options

        # @!parse
        #   # @param access_token_object [String]
        #   # @param query_options [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(access_token_object:, query_options: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] cursor
          #   Paginate through collections of data by setting the cursor parameter to a
          #   next_cursor attribute returned by a previous request's response_metadata.
          #   Default value fetches the first "page" of the collection.
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!parse
          #   # @return [String]
          #   attr_writer :cursor

          # @!attribute [r] exclude_archived
          #   Set to true to exclude archived channels from the list.
          #
          #   @return [Boolean, nil]
          optional :exclude_archived, Knockapi::Internal::Type::Boolean

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :exclude_archived

          # @!attribute [r] limit
          #   The maximum number of channels to return.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] team_id
          #   Encoded team ID (T1234) to list channels in, required if org token is used.
          #
          #   @return [String, nil]
          optional :team_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :team_id

          # @!attribute [r] types
          #   Mix and match channel types by providing a comma-separated list of any
          #   combination of public_channel, private_channel, mpim, im.
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

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
