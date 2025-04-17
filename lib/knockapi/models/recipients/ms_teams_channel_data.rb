# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #   List of Microsoft Teams connections.
        #
        #   @return [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::MsTeamsChannelData::Connection] }

        # @!attribute ms_teams_tenant_id
        #   Microsoft Teams tenant ID.
        #
        #   @return [String, nil]
        optional :ms_teams_tenant_id, String, nil?: true

        # @!parse
        #   # Microsoft Teams channel connection.
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        #   # @param ms_teams_tenant_id [String, nil]
        #   #
        #   def initialize(connections:, ms_teams_tenant_id: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # Microsoft Teams token connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          # Microsoft Teams token connection.
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection }

          # Microsoft Teams incoming webhook connection.
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection }

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

            # @!parse
            #   # Microsoft Teams token connection.
            #   #
            #   # @param ms_teams_channel_id [String, nil]
            #   # @param ms_teams_team_id [String, nil]
            #   # @param ms_teams_tenant_id [String, nil]
            #   # @param ms_teams_user_id [String, nil]
            #   #
            #   def initialize(ms_teams_channel_id: nil, ms_teams_team_id: nil, ms_teams_tenant_id: nil, ms_teams_user_id: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   Microsoft Teams incoming webhook.
            #
            #   @return [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook }

            # @!parse
            #   # Microsoft Teams incoming webhook connection.
            #   #
            #   # @param incoming_webhook [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            #   #
            #   def initialize(incoming_webhook:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

            # @see Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection#incoming_webhook
            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # @!attribute url
              #   Microsoft Teams incoming webhook URL.
              #
              #   @return [String]
              required :url, String

              # @!parse
              #   # Microsoft Teams incoming webhook.
              #   #
              #   # @param url [String]
              #   #
              #   def initialize(url:, **) = super

              # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
            end
          end

          # @!parse
          #   # @return [Array(Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection)]
          #   def self.variants; end
        end
      end
    end
  end
end
