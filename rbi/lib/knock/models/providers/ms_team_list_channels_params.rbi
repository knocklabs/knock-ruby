# typed: strong

module Knock
  module Models
    module Providers
      class MsTeamListChannelsParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(String) }
        def ms_teams_tenant_object
        end

        sig { params(_: String).returns(String) }
        def ms_teams_tenant_object=(_)
        end

        sig { returns(String) }
        def team_id
        end

        sig { params(_: String).returns(String) }
        def team_id=(_)
        end

        sig { returns(T.nilable(Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions)) }
        def query_options
        end

        sig do
          params(_: Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions)
            .returns(Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions)
        end
        def query_options=(_)
        end

        sig do
          params(
            ms_teams_tenant_object: String,
            team_id: String,
            query_options: Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions,
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(ms_teams_tenant_object:, team_id:, query_options: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                ms_teams_tenant_object: String,
                team_id: String,
                query_options: Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions,
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end

        class QueryOptions < Knock::BaseModel
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

          sig { params(filter: String, select_: String).void }
          def initialize(filter: nil, select_: nil)
          end

          sig { override.returns({filter: String, select_: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
