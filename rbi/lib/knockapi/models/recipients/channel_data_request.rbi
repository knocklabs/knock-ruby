# typed: strong

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::BaseModel
        # Channel data for push providers
        sig do
          returns(
            T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            )
          )
        end
        attr_accessor :data

        # Set channel data for a type of channel
        sig do
          params(
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Util::AnyHash,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            )
          )
            .returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override
            .returns(
              {
                data: T.any(
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData
                )
              }
            )
        end
        def to_hash
        end

        # Channel data for push providers
        module Data
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData
                )
              }
            end

          class << self
            sig do
              override
                .returns(
                  [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
                )
            end
            def variants
            end
          end
        end
      end
    end
  end
end
