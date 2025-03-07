# typed: strong

module Knock
  module Models
    module Providers
      class SlackListChannelsParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(String) }
        def access_token_object
        end

        sig { params(_: String).returns(String) }
        def access_token_object=(_)
        end

        sig { returns(T.nilable(Knock::Models::Providers::SlackListChannelsParams::QueryOptions)) }
        def query_options
        end

        sig do
          params(_: Knock::Models::Providers::SlackListChannelsParams::QueryOptions)
            .returns(Knock::Models::Providers::SlackListChannelsParams::QueryOptions)
        end
        def query_options=(_)
        end

        sig do
          params(
            access_token_object: String,
            query_options: Knock::Models::Providers::SlackListChannelsParams::QueryOptions,
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(access_token_object:, query_options: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                access_token_object: String,
                query_options: Knock::Models::Providers::SlackListChannelsParams::QueryOptions,
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end

        class QueryOptions < Knock::BaseModel
          sig { returns(T.nilable(String)) }
          def cursor
          end

          sig { params(_: String).returns(String) }
          def cursor=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def exclude_archived
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def exclude_archived=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          sig { returns(T.nilable(String)) }
          def team_id
          end

          sig { params(_: String).returns(String) }
          def team_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def types
          end

          sig { params(_: String).returns(String) }
          def types=(_)
          end

          sig do
            params(
              cursor: String,
              exclude_archived: T::Boolean,
              limit: Integer,
              team_id: String,
              types: String
            ).void
          end
          def initialize(cursor: nil, exclude_archived: nil, limit: nil, team_id: nil, types: nil)
          end

          sig do
            override
              .returns({
                         cursor: String,
                         exclude_archived: T::Boolean,
                         limit: Integer,
                         team_id: String,
                         types: String
                       })
          end
          def to_hash
          end
        end
      end
    end
  end
end
