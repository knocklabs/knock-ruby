# frozen_string_literal: true

module Knock
  module Models
    class ChannelData < Knock::BaseModel
      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute channel_id
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute data
      #   Channel data for push providers
      #
      #   @return [Knock::Models::PushChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData, Knock::Models::OneSignalChannelData]
      required :data, union: -> { Knock::Models::ChannelData::Data }

      # @!parse
      #   # Channel data for various channel types
      #   #
      #   # @param _typename [String]
      #   # @param channel_id [String]
      #   # @param data [Knock::Models::PushChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData, Knock::Models::OneSignalChannelData]
      #   #
      #   def initialize(_typename:, channel_id:, data:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Channel data for push providers
      class Data < Knock::Union
        # Channel data for push providers
        variant -> { Knock::Models::PushChannelData }

        # Slack channel data
        variant -> { Knock::Models::SlackChannelData }

        # Microsoft Teams channel data
        variant -> { Knock::Models::MsTeamsChannelData }

        # Discord channel data
        variant -> { Knock::Models::DiscordChannelData }

        # OneSignal channel data
        variant -> { Knock::Models::OneSignalChannelData }
      end
    end
  end
end
