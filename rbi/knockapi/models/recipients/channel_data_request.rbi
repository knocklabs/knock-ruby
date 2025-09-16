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
              Knockapi::Recipients::PushChannelData,
              Knockapi::Recipients::OneSignalChannelData,
              Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData,
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
                Knockapi::Recipients::PushChannelData::OrHash,
                Knockapi::Recipients::OneSignalChannelData::OrHash,
                Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData::OrHash,
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
                  Knockapi::Recipients::PushChannelData,
                  Knockapi::Recipients::OneSignalChannelData,
                  Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData,
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
                Knockapi::Recipients::PushChannelData,
                Knockapi::Recipients::OneSignalChannelData,
                Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            end

          class AwsSnsPushChannelData < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::AwsSnsPushChannelData,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of platform endpoint ARNs. See
            # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
            sig { returns(T::Array[String]) }
            attr_accessor :target_arns

            # AWS SNS push channel data.
            sig do
              params(target_arns: T::Array[String]).returns(T.attached_class)
            end
            def self.new(
              # A list of platform endpoint ARNs. See
              # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
              target_arns:
            )
            end

            sig { override.returns({ target_arns: T::Array[String] }) }
            def to_hash
            end
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
