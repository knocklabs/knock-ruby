# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A JSON encoded string containing the access token object reference
        sig { returns(String) }
        attr_accessor :access_token_object

        sig { returns(T.nilable(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions)) }
        attr_reader :query_options

        sig do
          params(
            query_options: T.any(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :query_options

        sig do
          params(
            access_token_object: String,
            query_options: T.any(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions, Knockapi::Internal::AnyHash),
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(access_token_object:, query_options: nil, request_options: {}); end

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
        def to_hash; end

        class QueryOptions < Knockapi::Internal::Type::BaseModel
          # A cursor to paginate through the channels
          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          # Whether to exclude archived channels
          sig { returns(T.nilable(String)) }
          attr_reader :exclude_archived

          sig { params(exclude_archived: String).void }
          attr_writer :exclude_archived

          # The number of channels to return
          sig { returns(T.nilable(String)) }
          attr_reader :limit

          sig { params(limit: String).void }
          attr_writer :limit

          # The ID of the Slack team to get channels for
          sig { returns(T.nilable(String)) }
          attr_reader :team_id

          sig { params(team_id: String).void }
          attr_writer :team_id

          # The types of channels to return
          sig { returns(T.nilable(String)) }
          attr_reader :types

          sig { params(types: String).void }
          attr_writer :types

          sig do
            params(cursor: String, exclude_archived: String, limit: String, team_id: String, types: String)
              .returns(T.attached_class)
          end
          def self.new(cursor: nil, exclude_archived: nil, limit: nil, team_id: nil, types: nil); end

          sig do
            override.returns(
              {
                cursor: String,
                exclude_archived: String,
                limit: String,
                team_id: String,
                types: String
              }
            )
          end
          def to_hash; end
        end
      end
    end
  end
end
