# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #
        #   @return [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::DiscordChannelData::Connection] }

        # @!parse
        #   # Discord channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
        #   #
        #   def initialize(connections:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # Discord channel connection
        module Connection
          extend Knockapi::Internal::Type::Union

          # Discord channel connection
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection }

          # Discord incoming webhook connection
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection }

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_id
            #   The Discord channel ID
            #
            #   @return [String]
            required :channel_id, String

            # @!parse
            #   # Discord channel connection
            #   #
            #   # @param channel_id [String]
            #   #
            #   def initialize(channel_id:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   The incoming webhook
            #
            #   @return [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook }

            # @!parse
            #   # Discord incoming webhook connection
            #   #
            #   # @param incoming_webhook [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
            #   #
            #   def initialize(incoming_webhook:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

            # @see Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection#incoming_webhook
            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # @!attribute url
              #   The URL of the incoming webhook
              #
              #   @return [String]
              required :url, String

              # @!parse
              #   # The incoming webhook
              #   #
              #   # @param url [String]
              #   #
              #   def initialize(url:, **) = super

              # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
            end
          end

          # @!parse
          #   # @return [Array(Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection)]
          #   def self.variants; end
        end
      end
    end
  end
end
