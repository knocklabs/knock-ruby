# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # A JSON encoded string containing the access token object reference
        sig { returns(String) }
        def access_token_object
        end

        sig { params(_: String).returns(String) }
        def access_token_object=(_)
        end

        sig { returns(T.nilable(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions)) }
        def query_options
        end

        sig do
          params(_: Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions)
            .returns(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions)
        end
        def query_options=(_)
        end

        sig do
          params(
            access_token_object: String,
            query_options: Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions,
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(access_token_object:, query_options: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                access_token_object: String,
                query_options: Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions,
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash
        end

        class QueryOptions < Knockapi::BaseModel
          # A cursor to paginate through the channels
          sig { returns(T.nilable(String)) }
          def cursor
          end

          sig { params(_: String).returns(String) }
          def cursor=(_)
          end

          # Whether to exclude archived channels
          sig { returns(T.nilable(T::Boolean)) }
          def exclude_archived
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def exclude_archived=(_)
          end

          # The number of channels to return
          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          # The ID of the Slack team to get channels for
          sig { returns(T.nilable(String)) }
          def team_id
          end

          sig { params(_: String).returns(String) }
          def team_id=(_)
          end

          # The types of channels to return (comma separated list)
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
            )
              .returns(T.attached_class)
          end
          def self.new(cursor: nil, exclude_archived: nil, limit: nil, team_id: nil, types: nil)
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
