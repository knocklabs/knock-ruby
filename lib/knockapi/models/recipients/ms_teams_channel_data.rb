# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Typename]
        required :_typename,
                 enum: -> { Knockapi::Models::Recipients::MsTeamsChannelData::Typename },
                 api_name: :__typename

        # @!attribute connections
        #   List of Microsoft Teams connections.
        #
        #   @return [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::MsTeamsChannelData::Connection] }

        # @!attribute type
        #   The channel type identifier
        #
        #   @return [Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::MsTeamsChannelData::Type }

        # @!attribute ms_teams_tenant_id
        #   Microsoft Teams tenant ID.
        #
        #   @return [String, nil]
        optional :ms_teams_tenant_id, String, nil?: true

        # @!method initialize(_typename:, connections:, type:, ms_teams_tenant_id: nil)
        #   Microsoft Teams channel connection.
        #
        #   @param _typename [Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Typename]
        #   @param connections [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection>]
        #   @param type [Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Type]
        #   @param ms_teams_tenant_id [String, nil]

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::MsTeamsChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          MS_TEAMS_CHANNEL_DATA = :MsTeamsChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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

            # @!method initialize(ms_teams_channel_id: nil, ms_teams_team_id: nil, ms_teams_tenant_id: nil, ms_teams_user_id: nil)
            #   Microsoft Teams token connection.
            #
            #   @param ms_teams_channel_id [String, nil]
            #   @param ms_teams_team_id [String, nil]
            #   @param ms_teams_tenant_id [String, nil]
            #   @param ms_teams_user_id [String, nil]
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute incoming_webhook
            #   Microsoft Teams incoming webhook.
            #
            #   @return [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]
            required :incoming_webhook,
                     -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook }

            # @!method initialize(incoming_webhook:)
            #   Microsoft Teams incoming webhook connection.
            #
            #   @param incoming_webhook [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook]

            # @see Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection#incoming_webhook
            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # @!attribute url
              #   Microsoft Teams incoming webhook URL.
              #
              #   @return [String]
              required :url, String

              # @!method initialize(url:)
              #   Microsoft Teams incoming webhook.
              #
              #   @param url [String]
            end
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection)]
        end

        # The channel type identifier
        #
        # @see Knockapi::Models::Recipients::MsTeamsChannelData#type
        module Type
          extend Knockapi::Internal::Type::Enum

          CHAT_MS_TEAMS = :chat_ms_teams

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
