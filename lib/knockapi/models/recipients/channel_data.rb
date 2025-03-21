# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::BaseModel
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
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::RecipientsChannelData::Data }

        # @!parse
        #   # Channel data for various channel types
        #   #
        #   # @param _typename [String]
        #   # @param channel_id [String]
        #   # @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
        #   #
        #   def initialize(_typename:, channel_id:, data:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # Channel data for push providers
        module Data
          extend Knockapi::Union

          # Channel data for push providers
          variant -> { Knockapi::Models::Recipients::PushChannelData }

          # Slack channel data
          variant -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel data
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data
          variant -> { Knockapi::Models::Recipients::DiscordChannelData }

          # OneSignal channel data
          variant -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # @!parse
          #   class << self
          #     # @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData)]
          #     def variants; end
          #   end
        end
      end
    end
  end
end
