# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #   List of Microsoft Teams connections.
        #
        #   @return [Array<Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        required :connections,
                 -> {
                   Knockapi::Internal::Type::ArrayOf[union: Knockapi::Recipients::MsTeamsChannelData::Connection]
                 }

        # @!attribute ms_teams_tenant_id
        #   Microsoft Teams tenant ID.
        #
        #   @return [String, nil]
        optional :ms_teams_tenant_id, String, nil?: true

        # @!method initialize(connections:, ms_teams_tenant_id: nil)
        #   Microsoft Teams channel connection.
        #
        #   @param connections [Array<Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>] List of Microsoft Teams connections.
        #
        #   @param ms_teams_tenant_id [String, nil] Microsoft Teams tenant ID.

        # Microsoft Teams token connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          # Microsoft Teams token connection.
          variant -> { Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection }

          # Microsoft Teams incoming webhook connection.
          variant -> {
            Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
          }

          class MsTeamsTokenConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute ms_teams_channel_id
            #   Microsoft Teams channel ID.
            #
            #   @return [String, nil]
            optional :ms_teams_channel_id, String, nil?: true

            # @!attribute ms_teams_team_id
            #   Microsoft Teams team ID.
            #
            #   @return [String, nil]
            optional :ms_teams_team_id, String, nil?: true

            # @!attribute ms_teams_tenant_id
            #   Microsoft Teams tenant ID.
            #
            #   @return [String, nil]
            optional :ms_teams_tenant_id, String, nil?: true

            # @!attribute ms_teams_user_id
            #   Microsoft Teams user ID.
            #
            #   @return [String, nil]
            optional :ms_teams_user_id, String, nil?: true

            # @!method initialize(ms_teams_channel_id: nil, ms_teams_team_id: nil, ms_teams_tenant_id: nil, ms_teams_user_id: nil)
            #   Microsoft Teams token connection.
            #
            #   @param ms_teams_channel_id [String, nil] Microsoft Teams channel ID.
            #
            #   @param ms_teams_team_id [String, nil] Microsoft Teams team ID.
            #
            #   @param ms_teams_tenant_id [String, nil] Microsoft Teams tenant ID.
            #
            #   @param ms_teams_user_id [String, nil] Microsoft Teams user ID.
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   Microsoft Teams incoming webhook.
            #
            #   @return [Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> {
                       Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                     }

            # @!method initialize(incoming_webhook:)
            #   Microsoft Teams incoming webhook connection.
            #
            #   @param incoming_webhook [Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook] Microsoft Teams incoming webhook.

            # @see Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection#incoming_webhook
            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # @!attribute url
              #   Microsoft Teams incoming webhook URL.
              #
              #   @return [String]
              required :url, String

              # @!method initialize(url:)
              #   Microsoft Teams incoming webhook.
              #
              #   @param url [String] Microsoft Teams incoming webhook URL.
            end
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection)]

          define_sorbet_constant!(:Variants) do
            T.type_alias do
              T.any(
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
            end
          end
        end
      end
    end
  end
end
