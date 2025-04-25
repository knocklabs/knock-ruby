# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#list_channels
      class SlackListChannelsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference.
        #
        #   @return [String]
        required :access_token_object, String

        # @!attribute query_options
        #
        #   @return [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions }

        # @!method initialize(access_token_object:, query_options: nil, request_options: {})
        #   @param access_token_object [String] A JSON encoded string containing the access token object reference.
        #
        #   @param query_options [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions]
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # @!attribute cursor
          #   Paginate through collections of data by setting the cursor parameter to a
          #   next_cursor attribute returned by a previous request's response_metadata.
          #   Default value fetches the first "page" of the collection.
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!attribute exclude_archived
          #   Set to true to exclude archived channels from the list.
          #
          #   @return [Boolean, nil]
          optional :exclude_archived, Knockapi::Internal::Type::Boolean

          # @!attribute limit
          #   The maximum number of channels to return.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute team_id
          #   Encoded team ID (T1234) to list channels in, required if org token is used.
          #
          #   @return [String, nil]
          optional :team_id, String

          # @!attribute types
          #   Mix and match channel types by providing a comma-separated list of any
          #   combination of public_channel, private_channel, mpim, im.
          #
          #   @return [String, nil]
          optional :types, String

          # @!method initialize(cursor: nil, exclude_archived: nil, limit: nil, team_id: nil, types: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions} for more
          #   details.
          #
          #   @param cursor [String] Paginate through collections of data by setting the cursor parameter to a next_c
          #   ...
          #
          #   @param exclude_archived [Boolean] Set to true to exclude archived channels from the list.
          #
          #   @param limit [Integer] The maximum number of channels to return.
          #
          #   @param team_id [String] Encoded team ID (T1234) to list channels in, required if org token is used.
          #
          #   @param types [String] Mix and match channel types by providing a comma-separated list of any combinati
          #   ...
        end
      end
    end
  end
end
