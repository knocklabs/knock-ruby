# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #   List of Slack channel connections.
        #
        #   @return [Array<Knockapi::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
        required :connections,
                 -> {
                   Knockapi::Internal::Type::ArrayOf[union: Knockapi::Recipients::SlackChannelData::Connection]
                 }

        # @!attribute token
        #   A Slack connection token.
        #
        #   @return [Knockapi::Recipients::SlackChannelData::Token, nil]
        optional :token, -> { Knockapi::Recipients::SlackChannelData::Token }, nil?: true

        # @!method initialize(connections:, token: nil)
        #   Slack channel data
        #
        #   @param connections [Array<Knockapi::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection>] List of Slack channel connections.
        #
        #   @param token [Knockapi::Recipients::SlackChannelData::Token, nil] A Slack connection token.

        # A Slack connection, either an access token or an incoming webhook
        module Connection
          extend Knockapi::Internal::Type::Union

          # A Slack connection token.
          variant -> { Knockapi::Recipients::SlackChannelData::Connection::SlackTokenConnection }

          # A Slack connection incoming webhook.
          variant -> { Knockapi::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection }

          class SlackTokenConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute access_token
            #   A Slack access token.
            #
            #   @return [String, nil]
            optional :access_token, String, nil?: true

            # @!attribute channel_id
            #   A Slack channel ID from the Slack provider.
            #
            #   @return [String, nil]
            optional :channel_id, String, nil?: true

            # @!attribute user_id
            #   A Slack user ID from the Slack provider.
            #
            #   @return [String, nil]
            optional :user_id, String, nil?: true

            # @!method initialize(access_token: nil, channel_id: nil, user_id: nil)
            #   A Slack connection token.
            #
            #   @param access_token [String, nil] A Slack access token.
            #
            #   @param channel_id [String, nil] A Slack channel ID from the Slack provider.
            #
            #   @param user_id [String, nil] A Slack user ID from the Slack provider.
          end

          class SlackIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute url
            #   The URL of the incoming webhook for a Slack connection.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   A Slack connection incoming webhook.
            #
            #   @param url [String] The URL of the incoming webhook for a Slack connection.
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection)]
        end

        # @see Knockapi::Recipients::SlackChannelData#token
        class Token < Knockapi::Internal::Type::BaseModel
          # @!attribute access_token
          #   A Slack access token.
          #
          #   @return [String, nil]
          required :access_token, String, nil?: true

          # @!method initialize(access_token:)
          #   A Slack connection token.
          #
          #   @param access_token [String, nil] A Slack access token.
        end
      end
    end
  end
end
