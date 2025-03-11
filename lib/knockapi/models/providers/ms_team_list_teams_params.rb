# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!attribute [r] query_options
        #
        #   @return [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions }

        # @!parse
        #   # @return [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions]
        #   attr_writer :query_options

        # @!parse
        #   # @param ms_teams_tenant_object [String]
        #   # @param query_options [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(ms_teams_tenant_object:, query_options: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        class QueryOptions < Knockapi::BaseModel
          # @!attribute [r] filter
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to filter teams
          #
          #   @return [String, nil]
          optional :filter, String, api_name: :$filter

          # @!parse
          #   # @return [String]
          #   attr_writer :filter

          # @!attribute [r] select_
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to select fields on a team
          #
          #   @return [String, nil]
          optional :select_, String, api_name: :$select

          # @!parse
          #   # @return [String]
          #   attr_writer :select_

          # @!attribute [r] skiptoken
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to retrieve the next page of results
          #
          #   @return [String, nil]
          optional :skiptoken, String, api_name: :$skiptoken

          # @!parse
          #   # @return [String]
          #   attr_writer :skiptoken

          # @!attribute [r] top
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to limit the number of teams returned
          #
          #   @return [Integer, nil]
          optional :top, Integer, api_name: :$top

          # @!parse
          #   # @return [Integer]
          #   attr_writer :top

          # @!parse
          #   # @param filter [String]
          #   # @param select_ [String]
          #   # @param skiptoken [String]
          #   # @param top [Integer]
          #   #
          #   def initialize(filter: nil, select_: nil, skiptoken: nil, top: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
