# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Providers::SlackListChannelsParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A JSON encoded string containing the access token object reference.
        sig { returns(String) }
        attr_accessor :access_token_object

        sig do
          returns(
            T.nilable(
              Knockapi::Providers::SlackListChannelsParams::QueryOptions
            )
          )
        end
        attr_reader :query_options

        sig do
          params(
            query_options:
              Knockapi::Providers::SlackListChannelsParams::QueryOptions::OrHash
          ).void
        end
        attr_writer :query_options

        sig do
          params(
            access_token_object: String,
            query_options:
              Knockapi::Providers::SlackListChannelsParams::QueryOptions::OrHash,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON encoded string containing the access token object reference.
          access_token_object:,
          query_options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              access_token_object: String,
              query_options:
                Knockapi::Providers::SlackListChannelsParams::QueryOptions,
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
                Knockapi::Providers::SlackListChannelsParams::QueryOptions,
                Knockapi::Internal::AnyHash
              )
            end

          # Paginate through collections of data by setting the cursor parameter to a
          # next_cursor attribute returned by a previous request's response_metadata.
          # Default value fetches the first "page" of the collection.
          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          # Set to true to exclude archived channels from the list.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :exclude_archived

          sig { params(exclude_archived: T::Boolean).void }
          attr_writer :exclude_archived

          # The maximum number of channels to return.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Encoded team ID (T1234) to list channels in, required if org token is used.
          sig { returns(T.nilable(String)) }
          attr_reader :team_id

          sig { params(team_id: String).void }
          attr_writer :team_id

          # Mix and match channel types by providing a comma-separated list of any
          # combination of public_channel, private_channel, mpim, im.
          sig { returns(T.nilable(String)) }
          attr_reader :types

          sig { params(types: String).void }
          attr_writer :types

          sig do
            params(
              cursor: String,
              exclude_archived: T::Boolean,
              limit: Integer,
              team_id: String,
              types: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Paginate through collections of data by setting the cursor parameter to a
            # next_cursor attribute returned by a previous request's response_metadata.
            # Default value fetches the first "page" of the collection.
            cursor: nil,
            # Set to true to exclude archived channels from the list.
            exclude_archived: nil,
            # The maximum number of channels to return.
            limit: nil,
            # Encoded team ID (T1234) to list channels in, required if org token is used.
            team_id: nil,
            # Mix and match channel types by providing a comma-separated list of any
            # combination of public_channel, private_channel, mpim, im.
            types: nil
          )
          end

          sig do
            override.returns(
              {
                cursor: String,
                exclude_archived: T::Boolean,
                limit: Integer,
                team_id: String,
                types: String
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
