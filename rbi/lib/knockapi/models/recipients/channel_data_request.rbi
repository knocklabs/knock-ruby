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
        def data
        end

        sig do
          params(
            _: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            )
          )
            .returns(
              T.any(
                Knockapi::Models::Recipients::PushChannelData,
                Knockapi::Models::Recipients::OneSignalChannelData,
                Knockapi::Models::Recipients::SlackChannelData,
                Knockapi::Models::Recipients::MsTeamsChannelData,
                Knockapi::Models::Recipients::DiscordChannelData
              )
            )
        end
        def data=(_)
        end

        # Set channel data for a type of channel
        sig do
          params(
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
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
        end
      end
    end
  end
end
