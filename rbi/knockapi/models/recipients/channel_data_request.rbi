# typed: strong

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::ChannelDataRequest,
              Knockapi::Internal::AnyHash
            )
          end

        # Channel data for a given channel type.
        sig do
          returns(
            T.any(
              Knockapi::Recipients::PushChannelDataTokensOnly,
              Knockapi::Recipients::PushChannelDataDevicesOnly,
              Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
              Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
              Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
              Knockapi::Recipients::SlackChannelData,
              Knockapi::Recipients::MsTeamsChannelData,
              Knockapi::Recipients::DiscordChannelData
            )
          )
        end
        attr_accessor :data

        # A request to set channel data for a type of channel.
        sig do
          params(
            data:
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly::OrHash,
                Knockapi::Recipients::PushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly::OrHash,
                Knockapi::Recipients::SlackChannelData::OrHash,
                Knockapi::Recipients::MsTeamsChannelData::OrHash,
                Knockapi::Recipients::DiscordChannelData::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Channel data for a given channel type.
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                T.any(
                  Knockapi::Recipients::PushChannelDataTokensOnly,
                  Knockapi::Recipients::PushChannelDataDevicesOnly,
                  Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                  Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                  Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                  Knockapi::Recipients::SlackChannelData,
                  Knockapi::Recipients::MsTeamsChannelData,
                  Knockapi::Recipients::DiscordChannelData
                )
            }
          )
        end
        def to_hash
        end

        # Channel data for a given channel type.
        module Data
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly,
                Knockapi::Recipients::PushChannelDataDevicesOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            end

          sig do
            override.returns(
              T::Array[Knockapi::Recipients::ChannelDataRequest::Data::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
