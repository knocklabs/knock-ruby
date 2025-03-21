# typed: strong

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::BaseModel
        sig do
          returns(
            T::Array[
            T.any(
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
            )
            ]
          )
        end
        def connections
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
              )
              ]
            )
        end
        def connections=(_)
        end

        # Discord channel data
        sig do
          params(
            connections: T::Array[
            T.any(
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
            )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(connections:)
        end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                T.any(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
                )
                ]
              }
            )
        end
        def to_hash
        end

        # Discord channel connection
        module Connection
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
                )
              }
            end

          class DiscordChannelConnection < Knockapi::BaseModel
            # The Discord channel ID
            sig { returns(String) }
            def channel_id
            end

            sig { params(_: String).returns(String) }
            def channel_id=(_)
            end

            # Discord channel connection
            sig { params(channel_id: String).returns(T.attached_class) }
            def self.new(channel_id:)
            end

            sig { override.returns({channel_id: String}) }
            def to_hash
            end
          end

          class DiscordIncomingWebhookConnection < Knockapi::BaseModel
            # The incoming webhook
            sig do
              returns(
                Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
              )
            end
            def incoming_webhook
            end

            sig do
              params(
                _: Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
              )
                .returns(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
                )
            end
            def incoming_webhook=(_)
            end

            # Discord incoming webhook connection
            sig do
              params(
                incoming_webhook: Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
              )
                .returns(T.attached_class)
            end
            def self.new(incoming_webhook:)
            end

            sig do
              override
                .returns(
                  {
                    incoming_webhook: Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
                  }
                )
            end
            def to_hash
            end

            class IncomingWebhook < Knockapi::BaseModel
              # The URL of the incoming webhook
              sig { returns(String) }
              def url
              end

              sig { params(_: String).returns(String) }
              def url=(_)
              end

              # The incoming webhook
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:)
              end

              sig { override.returns({url: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
