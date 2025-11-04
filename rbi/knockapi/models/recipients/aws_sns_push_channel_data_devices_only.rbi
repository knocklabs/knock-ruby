# typed: strong

module Knockapi
  module Models
    module Recipients
      class AwsSnsPushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of devices. Each device contains a target_arn, and optionally a locale
        # and timezone.
        sig do
          returns(
            T::Array[
              Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::Device
            ]
          )
        end
        attr_accessor :devices

        # AWS SNS push channel data.
        sig do
          params(
            devices:
              T::Array[
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::Device::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of devices. Each device contains a target_arn, and optionally a locale
          # and timezone.
          devices:
        )
        end

        sig do
          override.returns(
            {
              devices:
                T::Array[
                  Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::Device
                ]
            }
          )
        end
        def to_hash
        end

        class Device < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::Device,
                Knockapi::Internal::AnyHash
              )
            end

          # The ARN of a platform endpoint associated with a platform application and a
          # device token. See
          # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
          sig { returns(String) }
          attr_accessor :target_arn

          # The locale of the object. Used for
          # [message localization](/concepts/translations).
          sig { returns(T.nilable(String)) }
          attr_accessor :locale

          # The timezone of the object. Must be a
          # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
          # Used
          # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
          sig { returns(T.nilable(String)) }
          attr_accessor :timezone

          sig do
            params(
              target_arn: String,
              locale: T.nilable(String),
              timezone: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The ARN of a platform endpoint associated with a platform application and a
            # device token. See
            # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
            target_arn:,
            # The locale of the object. Used for
            # [message localization](/concepts/translations).
            locale: nil,
            # The timezone of the object. Must be a
            # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
            # Used
            # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
            timezone: nil
          )
          end

          sig do
            override.returns(
              {
                target_arn: String,
                locale: T.nilable(String),
                timezone: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
