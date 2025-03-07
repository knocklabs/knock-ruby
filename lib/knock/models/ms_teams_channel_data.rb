# frozen_string_literal: true

module Knock
  module Models
    class MsTeamsChannelData < Knock::BaseModel
      # @!attribute connections
      #
      #   @return [Array<Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
      required :connections, -> { Knock::ArrayOf[union: Knock::Models::MsTeamsChannelData::Connection] }

      # @!attribute ms_teams_tenant_id
      #   The Microsoft Teams tenant ID
      #
      #   @return [String, nil]
      optional :ms_teams_tenant_id, String, nil?: true

      # @!parse
      #   # Microsoft Teams channel data
      #   #
      #   # @param connections [Array<Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
      #   # @param ms_teams_tenant_id [String, nil]
      #   #
      #   def initialize(connections:, ms_teams_tenant_id: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Microsoft Teams token connection
      class Connection < Knock::Union
        # Microsoft Teams token connection
        variant -> { Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection }

        # Microsoft Teams incoming webhook connection
        variant -> { Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection }

        class MsTeamsTokenConnection < Knock::BaseModel
          # @!attribute ms_teams_channel_id
          #   The Microsoft Teams channel ID
          #
          #   @return [String, nil]
          optional :ms_teams_channel_id, String, nil?: true

          # @!attribute ms_teams_team_id
          #   The Microsoft Teams team ID
          #
          #   @return [String, nil]
          optional :ms_teams_team_id, String, nil?: true

          # @!attribute ms_teams_tenant_id
          #   The Microsoft Teams tenant ID
          #
          #   @return [String, nil]
          optional :ms_teams_tenant_id, String, nil?: true

          # @!attribute ms_teams_user_id
          #   The Microsoft Teams user ID
          #
          #   @return [String, nil]
          optional :ms_teams_user_id, String, nil?: true

          # @!parse
          #   # Microsoft Teams token connection
          #   #
          #   # @param ms_teams_channel_id [String, nil]
          #   # @param ms_teams_team_id [String, nil]
          #   # @param ms_teams_tenant_id [String, nil]
          #   # @param ms_teams_user_id [String, nil]
          #   #
          #   def initialize(ms_teams_channel_id: nil, ms_teams_team_id: nil, ms_teams_tenant_id: nil, ms_teams_user_id: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end

        class MsTeamsIncomingWebhookConnection < Knock::BaseModel
          # @!attribute incoming_webhook
          #   The incoming webhook
          #
          #   @return [Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
          required :incoming_webhook,
                   -> { Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook }

          # @!parse
          #   # Microsoft Teams incoming webhook connection
          #   #
          #   # @param incoming_webhook [Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
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
