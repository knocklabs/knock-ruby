# typed: strong

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::DiscordChannelData,
              Knockapi::Internal::AnyHash
            )
          end

        # List of Discord channel connections.
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
              )
            ]
          )
        end
        attr_accessor :connections

        # Discord channel data.
        sig do
          params(
            connections:
              T::Array[
                T.any(
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection::OrHash,
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of Discord channel connections.
          connections:
        )
        end

        sig do
          override.returns(
            {
              connections:
                T::Array[
                  T.any(
                    Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                    Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
                  )
                ]
            }
          )
        end
        def to_hash
        end

        # Discord channel connection, either a channel connection or an incoming webhook
        # connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
              )
            end

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                  Knockapi::Internal::AnyHash
                )
              end

            # Discord channel ID.
            sig { returns(String) }
            attr_accessor :channel_id

            # Discord channel connection.
            sig { params(channel_id: String).returns(T.attached_class) }
            def self.new(
              # Discord channel ID.
              channel_id:
            )
            end

            sig { override.returns({ channel_id: String }) }
            def to_hash
            end
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection,
                  Knockapi::Internal::AnyHash
                )
              end

            # Discord incoming webhook object.
            sig do
              returns(
                Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
              )
            end
            attr_reader :incoming_webhook

            sig do
              params(
                incoming_webhook:
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook::OrHash
              ).void
            end
            attr_writer :incoming_webhook

            # Discord incoming webhook connection.
            sig do
              params(
                incoming_webhook:
                  Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Discord incoming webhook object.
              incoming_webhook:
            )
            end

            sig do
              override.returns(
                {
                  incoming_webhook:
                    Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
                }
              )
            end
            def to_hash
            end

            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook,
                    Knockapi::Internal::AnyHash
                  )
                end

              # Incoming webhook URL.
              sig { returns(String) }
              attr_accessor :url

              # Discord incoming webhook object.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(
                # Incoming webhook URL.
                url:
              )
              end

              sig { override.returns({ url: String }) }
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::DiscordChannelData::Connection::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
