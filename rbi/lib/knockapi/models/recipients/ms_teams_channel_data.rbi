# typed: strong

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection,
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection
              )
            ]
          )
        end
        attr_accessor :connections

        # The Microsoft Teams tenant ID
        sig { returns(T.nilable(String)) }
        attr_accessor :ms_teams_tenant_id

        # Microsoft Teams channel data
        sig do
          params(
            connections: T::Array[
              T.any(
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection
              )
            ],
            ms_teams_tenant_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(connections:, ms_teams_tenant_id: nil); end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection,
                    Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection
                  )
                ],
                ms_teams_tenant_id: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # A Slack connection, which either includes a channel_id or a user_id
        module Connection
          extend Knockapi::Internal::Type::Union

          class TokenConnection < Knockapi::Internal::Type::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :access_token

            sig { returns(T.nilable(String)) }
            attr_accessor :channel_id

            sig { returns(T.nilable(String)) }
            attr_accessor :user_id

            # A Slack connection, which either includes a channel_id or a user_id
            sig do
              params(
                access_token: T.nilable(String),
                channel_id: T.nilable(String),
                user_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(access_token: nil, channel_id: nil, user_id: nil); end

            sig do
              override
                .returns({
                           access_token: T.nilable(String),
                           channel_id: T.nilable(String),
                           user_id: T.nilable(String)
                         })
            end
            def to_hash; end
          end

          class IncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :url

            # An incoming webhook Slack connection
            sig { params(url: String).returns(T.attached_class) }
            def self.new(url:); end

            sig { override.returns({url: String}) }
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
