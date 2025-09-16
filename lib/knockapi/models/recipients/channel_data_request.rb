# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Recipients::ChannelDataRequest::Data }

        # @!method initialize(data:)
        #   A request to set channel data for a type of channel.
        #
        #   @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::ChannelDataRequest#data
        module Data
          extend Knockapi::Internal::Type::Union

          # Push channel data.
          variant -> { Knockapi::Recipients::PushChannelData }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::OneSignalChannelData }

          # AWS SNS push channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData }

          # Slack channel data.
          variant -> { Knockapi::Recipients::SlackChannelData }

          # Microsoft Teams channel data.
          variant -> { Knockapi::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Recipients::DiscordChannelData }

          class AwsSnsPushChannelData < Knockapi::Internal::Type::BaseModel
            # @!attribute target_arns
            #   A list of platform endpoint ARNs. See
            #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
            #
            #   @return [Array<String>]
            required :target_arns, Knockapi::Internal::Type::ArrayOf[String]

            # @!method initialize(target_arns:)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData}
            #   for more details.
            #
            #   AWS SNS push channel data.
            #
            #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin
          end

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
        end
      end
    end
  end
end
