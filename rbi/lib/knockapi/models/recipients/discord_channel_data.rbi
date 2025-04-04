# typed: strong

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
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
        attr_accessor :connections

        # Discord channel data
        sig do
          params(
            connections: T::Array[
            T.any(
              Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
              Knockapi::Internal::AnyHash,
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
          extend Knockapi::Internal::Type::Union

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            # The Discord channel ID
            sig { returns(String) }
            attr_accessor :channel_id

            # Discord channel connection
            sig { params(channel_id: String).returns(T.attached_class) }
            def self.new(channel_id:)
            end

            sig { override.returns({channel_id: String}) }
            def to_hash
            end
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # The incoming webhook
            sig do
              returns(
                Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
              )
            end
            attr_reader :incoming_webhook

            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :incoming_webhook

            # Discord incoming webhook connection
            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Internal::AnyHash
                )
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

            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # The URL of the incoming webhook
              sig { returns(String) }
              attr_accessor :url

              # The incoming webhook
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:)
              end

              sig { override.returns({url: String}) }
              def to_hash
              end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection]
              )
          end
          def self.variants
          end
        end
      end
    end
  end
end
