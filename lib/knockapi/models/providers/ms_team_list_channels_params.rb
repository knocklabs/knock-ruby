# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#list_channels
      class MsTeamListChannelsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!attribute team_id
        #   Microsoft Teams team ID.
        #
        #   @return [String]
        required :team_id, String

        # @!attribute query_options
        #
        #   @return [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions }

        # @!method initialize(ms_teams_tenant_object:, team_id:, query_options: nil, request_options: {})
        #   @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @param team_id [String] Microsoft Teams team ID.
        #
        #   @param query_options [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions]
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # @!attribute filter
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to filter channels.
          #
          #   @return [String, nil]
          optional :filter, String, api_name: :$filter

          # @!attribute select_
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to select specific properties.
          #
          #   @return [String, nil]
          optional :select_, String, api_name: :$select

          # @!method initialize(filter: nil, select_: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions} for more
          #   details.
          #
          #   @param filter [String] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
          #   ...
          #
          #   @param select_ [String] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
          #   ...
        end
      end
    end
  end
end
