# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      class MsTeamListChannelsParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!attribute team_id
        #   The ID of the Microsoft Teams team to list channels from
        #
        #   @return [String]
        required :team_id, String

        # @!attribute [r] query_options
        #
        #   @return [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions, nil]
        optional :query_options, -> { Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions }

        # @!parse
        #   # @return [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions]
        #   attr_writer :query_options

        # @!parse
        #   # @param ms_teams_tenant_object [String]
        #   # @param team_id [String]
        #   # @param query_options [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(ms_teams_tenant_object:, team_id:, query_options: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        class QueryOptions < Knockapi::BaseModel
          # @!attribute [r] filter
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to filter channels
          #
          #   @return [String, nil]
          optional :filter, String, api_name: :$filter

          # @!parse
          #   # @return [String]
          #   attr_writer :filter

          # @!attribute [r] select_
          #   [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #     to the Microsoft Graph API to select fields on a channel
          #
          #   @return [String, nil]
          optional :select_, String, api_name: :$select

          # @!parse
          #   # @return [String]
          #   attr_writer :select_

          # @!parse
          #   # @param filter [String]
          #   # @param select_ [String]
          #   #
          #   def initialize(filter: nil, select_: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
