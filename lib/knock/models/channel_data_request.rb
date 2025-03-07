# frozen_string_literal: true

module Knock
  module Models
    class ChannelDataRequest < Knock::BaseModel
      # @!attribute data
      #   Channel data for push providers
      #
      #   @return [Knock::Models::PushChannelData, Knock::Models::OneSignalChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData]
      required :data, union: -> { Knock::Models::ChannelDataRequest::Data }

      # @!parse
      #   # Set channel data for a type of channel
      #   #
      #   # @param data [Knock::Models::PushChannelData, Knock::Models::OneSignalChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Channel data for push providers
      class Data < Knock::Union
        # Channel data for push providers
        variant -> { Knock::Models::PushChannelData }

        # OneSignal channel data
        variant -> { Knock::Models::OneSignalChannelData }

        # Slack channel data
        variant -> { Knock::Models::SlackChannelData }

        # Microsoft Teams channel data
        variant -> { Knock::Models::MsTeamsChannelData }

        # Discord channel data
        variant -> { Knock::Models::DiscordChannelData }
      end
    end
  end
end
