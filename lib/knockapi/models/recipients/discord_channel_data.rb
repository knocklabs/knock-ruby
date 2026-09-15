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
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Recipients::DiscordChannelData::Connection] }

        # @!method initialize(connections:)
        #   Discord channel data.
        #
        #   @param connections [Array<Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection>] List of Discord channel connections.

        # Discord channel connection, either a channel connection or an incoming webhook
        # connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          # Discord channel connection.
          variant -> { Knockapi::Recipients::DiscordChannelData::Connection::DiscordChannelConnection }

          # Discord incoming webhook connection.
          variant -> { Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection }

          class DiscordChannelConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_id
            #   Discord channel ID.
            #
            #   @return [String]
            required :channel_id, String

            # @!attribute knock_tenant_id
            #   An optional Knock tenant ID (`knock_tenant_id`) that scopes this connection.
            #   Distinct from provider-specific tenant IDs. When a workflow is triggered with
            #   this tenant, Knock prefers this connection over untagged connections.
            #
            #   @return [String, nil]
            optional :knock_tenant_id, String, nil?: true

            # @!method initialize(channel_id:, knock_tenant_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection}
            #   for more details.
            #
            #   Discord channel connection.
            #
            #   @param channel_id [String] Discord channel ID.
            #
            #   @param knock_tenant_id [String, nil] An optional Knock tenant ID (`knock_tenant_id`) that scopes this connection. Dis
          end

          class DiscordIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   Discord incoming webhook object.
            #
            #   @return [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook }

            # @!attribute knock_tenant_id
            #   An optional Knock tenant ID (`knock_tenant_id`) that scopes this connection.
            #   Distinct from provider-specific tenant IDs. When a workflow is triggered with
            #   this tenant, Knock prefers this connection over untagged connections.
            #
            #   @return [String, nil]
            optional :knock_tenant_id, String, nil?: true

            # @!method initialize(incoming_webhook:, knock_tenant_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection}
            #   for more details.
            #
            #   Discord incoming webhook connection.
            #
            #   @param incoming_webhook [Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook] Discord incoming webhook object.
            #
            #   @param knock_tenant_id [String, nil] An optional Knock tenant ID (`knock_tenant_id`) that scopes this connection. Dis

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
              #   @param url [String] Incoming webhook URL.
            end
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordChannelConnection, Knockapi::Models::Recipients::DiscordChannelData::Connection::DiscordIncomingWebhookConnection)]
        end
      end
    end
  end
end
