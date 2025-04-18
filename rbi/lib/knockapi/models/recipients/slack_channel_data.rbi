# typed: strong

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::Internal::Type::BaseModel
        # A Slack connection token.
        sig { returns(T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token)) }
        attr_reader :token

        sig do
          params(
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :token

        # List of Slack channel connections.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
                )
              ]
            )
          )
        end
        attr_reader :connections

        sig do
          params(
            connections: T::Array[
              T.any(
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
              )
            ]
          )
            .void
        end
        attr_writer :connections

        # Slack channel data
        sig do
          params(
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Internal::AnyHash)),
            connections: T::Array[
              T.any(
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
              )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(token: nil, connections: nil); end

        sig do
          override
            .returns(
              {
                token: T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token),
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                    Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
                  )
                ]
              }
            )
        end
        def to_hash; end

        class Token < Knockapi::Internal::Type::BaseModel
          # A Slack access token.
          sig { returns(T.nilable(String)) }
          attr_accessor :access_token

          # A Slack connection token.
          sig { params(access_token: T.nilable(String)).returns(T.attached_class) }
          def self.new(access_token:); end

          sig { override.returns({access_token: T.nilable(String)}) }
          def to_hash; end
        end

        # A Slack connection, either an access token or an incoming webhook
        module Connection
          extend Knockapi::Internal::Type::Union

          class SlackTokenConnection < Knockapi::Internal::Type::BaseModel
            # A Slack access token.
            sig { returns(T.nilable(String)) }
            attr_accessor :access_token

            # A Slack channel ID from the Slack provider.
            sig { returns(T.nilable(String)) }
            attr_accessor :channel_id

            # A Slack user ID from the Slack provider.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_id

            # A Slack connection token.
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

          class SlackIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # The URL of the incoming webhook for a Slack connection.
            sig { returns(String) }
            attr_accessor :url

            # A Slack connection incoming webhook.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(url:); end

            sig { override.returns({url: String}) }
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
