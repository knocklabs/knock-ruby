# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #   List of Discord channel connections.
        #
        #   @return [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::DiscordChannelData::Connection] }

        # @!method initialize(connections:)
        #   Discord channel data.
        #
        #   @param connections [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]

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
      end
    end
  end
end
