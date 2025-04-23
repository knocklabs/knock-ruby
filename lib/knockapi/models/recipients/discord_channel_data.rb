# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::DiscordChannelData::Typename]
        required :_typename,
                 enum: -> { Knockapi::Models::Recipients::DiscordChannelData::Typename },
                 api_name: :__typename

        # @!attribute connections
        #   List of Discord channel connections.
        #
        #   @return [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::DiscordChannelData::Connection] }

        # @!attribute type
        #   The channel type identifier
        #
        #   @return [Symbol, Knockapi::Models::Recipients::DiscordChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::DiscordChannelData::Type }

        # @!method initialize(_typename:, connections:, type:)
        #   Discord channel data.
        #
        #   @param _typename [Symbol, Knockapi::Models::Recipients::DiscordChannelData::Typename]
        #   @param connections [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
        #   @param type [Symbol, Knockapi::Models::Recipients::DiscordChannelData::Type]

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::DiscordChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          DISCORD_CHANNEL_DATA = :DiscordChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Discord channel connection, either a channel connection or an incoming webhook
        # connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          # Discord channel connection.
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection }

          # Discord incoming webhook connection.
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection }

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_id
            #   Discord channel ID.
            #
            #   @return [String]
            required :channel_id, String

            # @!method initialize(channel_id:)
            #   Discord channel connection.
            #
            #   @param channel_id [String]
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   Discord incoming webhook object.
            #
            #   @return [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook }

            # @!method initialize(incoming_webhook:)
            #   Discord incoming webhook connection.
            #
            #   @param incoming_webhook [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]

            # @see Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection#incoming_webhook
            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # @!attribute url
              #   Incoming webhook URL.
              #
              #   @return [String]
              required :url, String

              # @!method initialize(url:)
              #   Discord incoming webhook object.
              #
              #   @param url [String]
            end
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection)]
        end

        # The channel type identifier
        #
        # @see Knockapi::Models::Recipients::DiscordChannelData#type
        module Type
          extend Knockapi::Internal::Type::Enum

          CHAT_DISCORD = :chat_discord

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
