# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

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
          sig { returns(T.nilable(String)) }
          def filter
          end

          sig { params(_: String).returns(String) }
          def filter=(_)
          end

          sig { returns(T.nilable(String)) }
          def select_
          end

          sig { params(_: String).returns(String) }
          def select_=(_)
          end

          sig { returns(T.nilable(String)) }
          def skiptoken
          end

          sig { params(_: String).returns(String) }
          def skiptoken=(_)
          end

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
