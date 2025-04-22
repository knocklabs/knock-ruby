# typed: strong

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        # The typename of the schema.
        sig { returns(Knockapi::Models::Recipients::DiscordChannelData::Typename::OrSymbol) }
        attr_accessor :_typename

        # List of Discord channel connections.
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

        # Discord channel data.
        sig do
          params(
            _typename: Knockapi::Models::Recipients::DiscordChannelData::Typename::OrSymbol,
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
        def self.new(_typename:, connections:); end

        sig do
          override
            .returns(
              {
                _typename: Knockapi::Models::Recipients::DiscordChannelData::Typename::OrSymbol,
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection,
                    Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
                  )
                ]
              }
            )
        end
        def to_hash; end

        # The typename of the schema.
        module Typename
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::DiscordChannelData::Typename) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCORD_CHANNEL_DATA =
            T.let(:DiscordChannelData, Knockapi::Models::Recipients::DiscordChannelData::Typename::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::DiscordChannelData::Typename::TaggedSymbol]) }
          def self.values; end
        end

        # Discord channel connection, either a channel connection or an incoming webhook
        # connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            # Discord channel ID.
            sig { returns(String) }
            attr_accessor :channel_id

            # Discord channel connection.
            sig { params(channel_id: String).returns(T.attached_class) }
            def self.new(channel_id:); end

            sig { override.returns({channel_id: String}) }
            def to_hash; end
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # Discord incoming webhook object.
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

            # Discord incoming webhook connection.
            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(incoming_webhook:); end

            sig do
              override
                .returns(
                  {
                    incoming_webhook: Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
                  }
                )
            end
            def to_hash; end

            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # Incoming webhook URL.
              sig { returns(String) }
              attr_accessor :url

              # Discord incoming webhook object.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:); end

              sig { override.returns({url: String}) }
              def to_hash; end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
