# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute connections
        #
        #   @return [Array<Knockapi::Models::Recipients::SlackChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::IncomingWebhookConnection>]
        required :connections,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Recipients::SlackChannelData::Connection] }

        # @!attribute token
        #
        #   @return [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        optional :token, -> { Knockapi::Models::Recipients::SlackChannelData::Token }, nil?: true

        # @!parse
        #   # Slack channel data
        #   #
        #   # @param connections [Array<Knockapi::Models::Recipients::SlackChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::IncomingWebhookConnection>]
        #   # @param token [Knockapi::Models::Recipients::SlackChannelData::Token, nil]
        #   #
        #   def initialize(connections:, token: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # A Slack connection, which either includes a channel_id or a user_id
        module Connection
          extend Knockapi::Internal::Type::Union

          # A Slack connection, which either includes a channel_id or a user_id
          variant -> { Knockapi::Models::Recipients::SlackChannelData::Connection::TokenConnection }

          # An incoming webhook Slack connection
          variant -> { Knockapi::Models::Recipients::SlackChannelData::Connection::IncomingWebhookConnection }

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
          #   # @return [Array(Knockapi::Models::Recipients::SlackChannelData::Connection::TokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::IncomingWebhookConnection)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::SlackChannelData#token
        class Token < Knockapi::Internal::Type::BaseModel
          # @!attribute access_token
          #
          #   @return [String, nil]
          required :access_token, String, nil?: true

          # @!parse
          #   # @param access_token [String, nil]
          #   #
          #   def initialize(access_token:, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
