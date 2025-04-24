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

        # @!attribute type
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::SlackChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::SlackChannelData::Type }

        # @!attribute token
        #   A Slack connection token.
        #
        #   @return [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        optional :token, -> { Knockapi::Models::Recipients::SlackChannelData::Token }, nil?: true

        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::SlackChannelData::Typename, nil]
        optional :_typename,
                 enum: -> { Knockapi::Models::Recipients::SlackChannelData::Typename },
                 api_name: :__typename

        # @!method initialize(connections:, type:, token: nil, _typename: nil)
        #   Slack channel data
        #
        #   @param connections [Array<Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
        #   @param type [Symbol, Knockapi::Models::Recipients::SlackChannelData::Type]
        #   @param token [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        #   @param _typename [Symbol, Knockapi::Models::Recipients::SlackChannelData::Typename]

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

            # @!method initialize(access_token: nil, channel_id: nil, user_id: nil)
            #   A Slack connection token.
            #
            #   @param access_token [String, nil]
            #   @param channel_id [String, nil]
            #   @param user_id [String, nil]
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
            #   @param url [String]
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection)]
        end

        # The type of provider.
        #
        # @see Knockapi::Models::Recipients::SlackChannelData#type
        module Type
          extend Knockapi::Internal::Type::Enum

          CHAT_SLACK = :chat_slack

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Knockapi::Models::Recipients::SlackChannelData#token
        class Token < Knockapi::Internal::Type::BaseModel
          # @!attribute access_token
          #   A Slack access token.
          #
          #   @return [String, nil]
          required :access_token, String, nil?: true

          # @!method initialize(access_token:)
          #   A Slack connection token.
          #
          #   @param access_token [String, nil]
        end

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::SlackChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          SLACK_CHANNEL_DATA = :SlackChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
