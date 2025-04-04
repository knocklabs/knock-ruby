# typed: strong

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
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
              Knockapi::Internal::AnyHash,
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
          extend Knockapi::Internal::Type::Union

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
              )
          end
          def self.variants
          end
        end
      end
    end
  end
end
