# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::BaseModel
        # @!attribute data
        #   Channel data for push providers
        #
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::ChannelDataRequest::Data }

        # @!parse
        #   # Set channel data for a type of channel
        #   #
        #   # @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # Channel data for push providers
        module Data
          extend Knockapi::Union

          # Channel data for push providers
          variant -> { Knockapi::Models::Recipients::PushChannelData }

          # OneSignal channel data
          variant -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # Slack channel data
          variant -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel data
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data
          variant -> { Knockapi::Models::Recipients::DiscordChannelData }

          # @!parse
          #   class << self
          #     # @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
          #     def variants; end
          #   end
        end
      end
    end
  end
end
