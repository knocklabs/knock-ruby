# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #
        #   @return [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::MsTeamsChannelData::Connection] }

        # @!attribute ms_teams_tenant_id
        #   The Microsoft Teams tenant ID
        #
        #   @return [String, nil]
        optional :ms_teams_tenant_id, String, nil?: true

        # @!parse
        #   # Microsoft Teams channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection>]
        #   # @param ms_teams_tenant_id [String, nil]
        #   #
        #   def initialize(connections:, ms_teams_tenant_id: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # A Slack connection, which either includes a channel_id or a user_id
        module Connection
          extend Knockapi::Internal::Type::Union

          # A Slack connection, which either includes a channel_id or a user_id
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection }

          # An incoming webhook Slack connection
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection }

          class TokenConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute access_token
            #
            #   @return [String, nil]
            optional :access_token, String, nil?: true

            # @!attribute channel_id
            #
            #   @return [String, nil]
            optional :channel_id, String, nil?: true

            # @!attribute user_id
            #
            #   @return [String, nil]
            optional :user_id, String, nil?: true

            # @!parse
            #   # A Slack connection, which either includes a channel_id or a user_id
            #   #
            #   # @param access_token [String, nil]
            #   # @param channel_id [String, nil]
            #   # @param user_id [String, nil]
            #   #
            #   def initialize(access_token: nil, channel_id: nil, user_id: nil, **) = super

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
          #   # @return [Array(Knockapi::Models::Recipients::MsTeamsChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::IncomingWebhookConnection)]
          #   def self.variants; end
        end
      end
    end
  end
end
