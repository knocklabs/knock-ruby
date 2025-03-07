# frozen_string_literal: true

module Knock
  module Models
    class SlackChannelData < Knock::BaseModel
      # @!attribute connections
      #
      #   @return [Array<Knock::Models::SlackChannelData::Connection::SlackTokenConnection, Knock::Models::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
      required :connections, -> { Knock::ArrayOf[union: Knock::Models::SlackChannelData::Connection] }

      # @!attribute token
      #   A token that's used to store the access token for a Slack workspace.
      #
      #   @return [Knock::Models::SlackChannelData::Token, nil]
      optional :token, -> { Knock::Models::SlackChannelData::Token }, nil?: true

      # @!parse
      #   # Slack channel data
      #   #
      #   # @param connections [Array<Knock::Models::SlackChannelData::Connection::SlackTokenConnection, Knock::Models::SlackChannelData::Connection::SlackIncomingWebhookConnection>]
      #   # @param token [Knock::Models::SlackChannelData::Token, nil]
      #   #
      #   def initialize(connections:, token: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # A Slack connection, which either includes a channel_id or a user_id
      class Connection < Knock::Union
        # A Slack connection, which either includes a channel_id or a user_id
        variant -> { Knock::Models::SlackChannelData::Connection::SlackTokenConnection }

        # An incoming webhook Slack connection
        variant -> { Knock::Models::SlackChannelData::Connection::SlackIncomingWebhookConnection }

        class SlackTokenConnection < Knock::BaseModel
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

          # def initialize: (Hash | Knock::BaseModel) -> void
        end

        class SlackIncomingWebhookConnection < Knock::BaseModel
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

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end

      class Token < Knock::BaseModel
        # @!attribute access_token
        #
        #   @return [String, nil]
        required :access_token, String, nil?: true

        # @!parse
        #   # A token that's used to store the access token for a Slack workspace.
        #   #
        #   # @param access_token [String, nil]
        #   #
        #   def initialize(access_token:, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
