# frozen_string_literal: true

module Knock
  module Models
    class DiscordChannelData < Knock::BaseModel
      # @!attribute connections
      #
      #   @return [Array<Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection, Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
      required :connections, -> { Knock::ArrayOf[union: Knock::Models::DiscordChannelData::Connection] }

      # @!parse
      #   # Discord channel data
      #   #
      #   # @param connections [Array<Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection, Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>]
      #   #
      #   def initialize(connections:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Discord channel connection
      class Connection < Knock::Union
        # Discord channel connection
        variant -> { Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection }

        # Discord incoming webhook connection
        variant -> { Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection }

        class DiscordChannelConnection < Knock::BaseModel
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

          # def initialize: (Hash | Knock::BaseModel) -> void
        end

        class DiscordIncomingWebhookConnection < Knock::BaseModel
          # @!attribute incoming_webhook
          #   The incoming webhook
          #
          #   @return [Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
          required :incoming_webhook,
                   -> { Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook }

          # @!parse
          #   # Discord incoming webhook connection
          #   #
          #   # @param incoming_webhook [Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
          #   #
          #   def initialize(incoming_webhook:, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void

          class IncomingWebhook < Knock::BaseModel
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

            # def initialize: (Hash | Knock::BaseModel) -> void
          end
        end
      end
    end
  end
end
