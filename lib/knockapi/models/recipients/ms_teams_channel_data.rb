# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::BaseModel
        # @!attribute connections
        #
        #   @return [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::ArrayOf[union: Knockapi::Models::Recipients::MsTeamsChannelData::Connection] }

        # @!attribute ms_teams_tenant_id
        #   The Microsoft Teams tenant ID
        #
        #   @return [String, nil]
        optional :ms_teams_tenant_id, String, nil?: true

        # @!parse
        #   # Microsoft Teams channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        #   # @param ms_teams_tenant_id [String, nil]
        #   #
        #   def initialize(connections:, ms_teams_tenant_id: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # @abstract
        #
        # Microsoft Teams token connection
        class Connection < Knockapi::Union
          # Microsoft Teams token connection
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection }

          # Microsoft Teams incoming webhook connection
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection }

          class MsTeamsTokenConnection < Knockapi::BaseModel
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

            # def initialize: (Hash | Knockapi::BaseModel) -> void
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::BaseModel
            # @!attribute incoming_webhook
            #   The incoming webhook
            #
            #   @return [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook }

            # @!parse
            #   # Microsoft Teams incoming webhook connection
            #   #
            #   # @param incoming_webhook [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            #   #
            #   def initialize(incoming_webhook:, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void

            class IncomingWebhook < Knockapi::BaseModel
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

              # def initialize: (Hash | Knockapi::BaseModel) -> void
            end
          end

          # @!parse
          #   class << self
          #     # @return [Array(Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection)]
          #     def variants; end
          #   end
        end
      end
    end
  end
end
