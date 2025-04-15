# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class DiscordChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #
        #   @return [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::DiscordChannelData::Connection] }

        # @!parse
        #   # Discord channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection>]
        #   #
        #   def initialize(connections:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # Discord channel connection
        module Connection
          extend Knockapi::Internal::Type::Union

          # Discord channel connection
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection }

          # An incoming webhook Slack connection
          variant -> { Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection }

          class ChannelConnection < Knockapi::Internal::Type::BaseModel
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

          class IncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute url
            #
            #   @return [String]
            required :url, String

            # @!parse
            #   # An incoming webhook Slack connection
            #   #
            #   # @param url [String]
            #   #
            #   def initialize(url:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Knockapi::Models::Recipients::DiscordChannelData::Connection::ChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::IncomingWebhookConnection)]
          #   def self.variants; end
        end
      end
    end
  end
end
