# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #   List of Slack channel connections.
        #
        #   @return [Array<Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::SlackChannelData::Connection] }

        # @!attribute token
        #   A Slack connection token.
        #
        #   @return [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        optional :token, -> { Knockapi::Models::Recipients::SlackChannelData::Token }, nil?: true

        # @!parse
        #   # Slack channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
        #   # @param token [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        #   #
        #   def initialize(connections:, token: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # A Slack connection, either an access token or an incoming webhook
        module Connection
          extend Knockapi::Internal::Type::Union

          # A Slack connection token.
          variant -> { Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection }

          # A Slack connection incoming webhook.
          variant -> { Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection }

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

            # @!parse
            #   # A Slack connection token.
            #   #
            #   # @param access_token [String, nil]
            #   # @param channel_id [String, nil]
            #   # @param user_id [String, nil]
            #   #
            #   def initialize(access_token: nil, channel_id: nil, user_id: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class SlackIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # @!attribute url
            #   The URL of the incoming webhook for a Slack connection.
            #
            #   @return [String]
            required :url, String

            # @!parse
            #   # A Slack connection incoming webhook.
            #   #
            #   # @param url [String]
            #   #
            #   def initialize(url:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::SlackChannelData#token
        class Token < Knockapi::Internal::Type::BaseModel
          # @!attribute access_token
          #   A Slack access token.
          #
          #   @return [String, nil]
          required :access_token, String, nil?: true

          # @!parse
          #   # A Slack connection token.
          #   #
          #   # @param access_token [String, nil]
          #   #
          #   def initialize(access_token:, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
