# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#list_teams
      class MsTeamListTeamsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!attribute query_options
        #
        #   @return [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Providers::MsTeamListTeamsParams::QueryOptions }

        # @!method initialize(ms_teams_tenant_object:, query_options: nil, request_options: {})
        #   @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @param query_options [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions]
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # @!attribute filter
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to filter teams.
          #
          #   @return [String, nil]
          optional :filter, String, api_name: :$filter

          # @!attribute select_
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to select fields on a team.
          #
          #   @return [String, nil]
          optional :select_, String, api_name: :$select

          # @!attribute skiptoken
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to retrieve the next page of results.
          #
          #   @return [String, nil]
          optional :skiptoken, String, api_name: :$skiptoken

          # @!attribute top
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to limit the number of teams returned.
          #
          #   @return [Integer, nil]
          optional :top, Integer, api_name: :$top

          # @!method initialize(filter: nil, select_: nil, skiptoken: nil, top: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions} for more
          #   details.
          #
          #   @param filter [String] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
          #
          #   @param select_ [String] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
          #
          #   @param skiptoken [String] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
          #
          #   @param top [Integer] [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed t
        end
      end
    end
  end
end
