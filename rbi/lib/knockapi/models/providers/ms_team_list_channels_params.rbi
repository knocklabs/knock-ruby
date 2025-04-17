# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListChannelsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A JSON encoded string containing the Microsoft Teams tenant object reference.
        sig { returns(String) }
        attr_accessor :ms_teams_tenant_object

        # Microsoft Teams team ID.
        sig { returns(String) }
        attr_accessor :team_id

        sig { returns(T.nilable(Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions)) }
        attr_reader :query_options

        sig do
          params(
            query_options: T.any(Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :query_options

        sig do
          params(
            ms_teams_tenant_object: String,
            team_id: String,
            query_options: T.any(Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions, Knockapi::Internal::AnyHash),
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_tenant_object:, team_id:, query_options: nil, request_options: {}); end

        sig do
          override
            .returns(
              {
                ms_teams_tenant_object: String,
                team_id: String,
                query_options: Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions,
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash; end

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to filter channels.
          sig { returns(T.nilable(String)) }
          attr_reader :filter

          sig { params(filter: String).void }
          attr_writer :filter

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to select specific properties.
          sig { returns(T.nilable(String)) }
          attr_reader :select_

          sig { params(select_: String).void }
          attr_writer :select_

          sig { params(filter: String, select_: String).returns(T.attached_class) }
          def self.new(filter: nil, select_: nil); end

          sig { override.returns({filter: String, select_: String}) }
          def to_hash; end
        end
      end
    end
  end
end
