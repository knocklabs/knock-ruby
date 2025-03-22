# typed: strong

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::BaseModel
        sig do
          returns(
            T::Array[
            T.any(
              Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
              Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
            )
            ]
          )
        end
        attr_accessor :connections

        # A token that's used to store the access token for a Slack workspace.
        sig { returns(T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token)) }
        attr_reader :token

        sig do
          params(
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Util::AnyHash))
          )
            .void
        end
        attr_writer :token

        # Slack channel data
        sig do
          params(
            connections: T::Array[
            T.any(
              Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
              Knockapi::Util::AnyHash,
              Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
            )
            ],
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Util::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(connections:, token: nil)
        end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                T.any(
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
                )
                ],
                token: T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token)
              }
            )
        end
        def to_hash
        end

        # A Slack connection, which either includes a channel_id or a user_id
        module Connection
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                  Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
                )
              }
            end

          class SlackTokenConnection < Knockapi::BaseModel
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
            def self.new(access_token: nil, channel_id: nil, user_id: nil)
            end

            sig do
              override
                .returns({
                           access_token: T.nilable(String),
                           channel_id: T.nilable(String),
                           user_id: T.nilable(String)
                         })
            end
            def to_hash
            end
          end

          class SlackIncomingWebhookConnection < Knockapi::BaseModel
            sig { returns(String) }
            attr_accessor :url

            # An incoming webhook Slack connection
            sig { params(url: String).returns(T.attached_class) }
            def self.new(url:)
            end

            sig { override.returns({url: String}) }
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection]
                )
            end
            def variants
            end
          end
        end

        class Token < Knockapi::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :access_token

          # A token that's used to store the access token for a Slack workspace.
          sig { params(access_token: T.nilable(String)).returns(T.attached_class) }
          def self.new(access_token:)
          end

          sig { override.returns({access_token: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
