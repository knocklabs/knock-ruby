# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # A JSON encoded string containing the Microsoft Teams tenant object reference
        sig { returns(String) }
        def ms_teams_tenant_object
        end

        sig { params(_: String).returns(String) }
        def ms_teams_tenant_object=(_)
        end

        sig { returns(T.nilable(Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions)) }
        def query_options
        end

        sig do
          params(_: Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions)
            .returns(Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions)
        end
        def query_options=(_)
        end

        sig do
          params(
            ms_teams_tenant_object: String,
            query_options: Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions,
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_tenant_object:, query_options: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                ms_teams_tenant_object: String,
                query_options: Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions,
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash
        end

        class QueryOptions < Knockapi::BaseModel
          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to filter teams
          sig { returns(T.nilable(String)) }
          def filter
          end

          sig { params(_: String).returns(String) }
          def filter=(_)
          end

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to select fields on a team
          sig { returns(T.nilable(String)) }
          def select_
          end

          sig { params(_: String).returns(String) }
          def select_=(_)
          end

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to retrieve the next page of results
          sig { returns(T.nilable(String)) }
          def skiptoken
          end

          sig { params(_: String).returns(String) }
          def skiptoken=(_)
          end

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          #   to the Microsoft Graph API to limit the number of teams returned
          sig { returns(T.nilable(Integer)) }
          def top
          end

          sig { params(_: Integer).returns(Integer) }
          def top=(_)
          end

          sig do
            params(filter: String, select_: String, skiptoken: String, top: Integer).returns(T.attached_class)
          end
          def self.new(filter: nil, select_: nil, skiptoken: nil, top: nil)
          end

          sig { override.returns({filter: String, select_: String, skiptoken: String, top: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
