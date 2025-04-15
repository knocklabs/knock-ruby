# typed: strong

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection,
                Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection
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
                Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection
              )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(connections:); end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection,
                    Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection
                  )
                ]
              }
            )
        end
        def to_hash; end

        # Discord channel connection
        module Connection
          extend Knockapi::Internal::Type::Union

          class ChannelConnection < Knockapi::Internal::Type::BaseModel
            # The Discord channel ID
            sig { returns(String) }
            attr_accessor :channel_id

            # Discord channel connection
            sig { params(channel_id: String).returns(T.attached_class) }
            def self.new(channel_id:); end

            sig { override.returns({channel_id: String}) }
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
                [Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
