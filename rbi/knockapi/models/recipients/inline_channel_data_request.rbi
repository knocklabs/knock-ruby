# typed: strong

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
        extend Knockapi::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PushChannelData,
              Knockapi::Recipients::OneSignalChannelData,
              Knockapi::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData,
              Knockapi::Recipients::SlackChannelData,
              Knockapi::Recipients::MsTeamsChannelData,
              Knockapi::Recipients::DiscordChannelData
            )
          end

        class AwsSnsPushChannelData < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData,
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
            T::Array[
              Knockapi::Recipients::InlineChannelDataRequestItem::Variants
            ]
          )
        end
        def self.variants
        end
      end

      InlineChannelDataRequest =
        T.let(
          Knockapi::Internal::Type::HashOf[
            union: Knockapi::Recipients::InlineChannelDataRequestItem
          ],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
