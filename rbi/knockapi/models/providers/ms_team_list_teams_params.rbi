# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Providers::MsTeamListTeamsParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A JSON encoded string containing the Microsoft Teams tenant object reference.
        sig { returns(String) }
        attr_accessor :ms_teams_tenant_object

        sig do
          returns(
            T.nilable(Knockapi::Providers::MsTeamListTeamsParams::QueryOptions)
          )
        end
        attr_reader :query_options

        sig do
          params(
            query_options:
              Knockapi::Providers::MsTeamListTeamsParams::QueryOptions::OrHash
          ).void
        end
        attr_writer :query_options

        sig do
          params(
            ms_teams_tenant_object: String,
            query_options:
              Knockapi::Providers::MsTeamListTeamsParams::QueryOptions::OrHash,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          query_options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ms_teams_tenant_object: String,
              query_options:
                Knockapi::Providers::MsTeamListTeamsParams::QueryOptions,
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Providers::MsTeamListTeamsParams::QueryOptions,
                Knockapi::Internal::AnyHash
              )
            end

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to filter teams.
          sig { returns(T.nilable(String)) }
          attr_reader :filter

          sig { params(filter: String).void }
          attr_writer :filter

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to select fields on a team.
          sig { returns(T.nilable(String)) }
          attr_reader :select_

          sig { params(select_: String).void }
          attr_writer :select_

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to retrieve the next page of results.
          sig { returns(T.nilable(String)) }
          attr_reader :skiptoken

          sig { params(skiptoken: String).void }
          attr_writer :skiptoken

          # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
          # to the Microsoft Graph API to limit the number of teams returned.
          sig { returns(T.nilable(Integer)) }
          attr_reader :top

          sig { params(top: Integer).void }
          attr_writer :top

          sig do
            params(
              filter: String,
              select_: String,
              skiptoken: String,
              top: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
            # to the Microsoft Graph API to filter teams.
            filter: nil,
            # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
            # to the Microsoft Graph API to select fields on a team.
            select_: nil,
            # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
            # to the Microsoft Graph API to retrieve the next page of results.
            skiptoken: nil,
            # [OData param](https://learn.microsoft.com/en-us/graph/query-parameters) passed
            # to the Microsoft Graph API to limit the number of teams returned.
            top: nil
          )
          end

          sig do
            override.returns(
              {
                filter: String,
                select_: String,
                skiptoken: String,
                top: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
