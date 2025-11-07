# typed: strong

module Knockapi
  module Models
    module Recipients
      class PushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PushChannelDataDevicesOnly,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of devices. Each device contains a token, and optionally a locale and
        # timezone.
        sig do
          returns(
            T::Array[Knockapi::Recipients::PushChannelDataDevicesOnly::Device]
          )
        end
        attr_accessor :devices

        # Push channel data.
        sig do
          params(
            devices:
              T::Array[
                Knockapi::Recipients::PushChannelDataDevicesOnly::Device::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of devices. Each device contains a token, and optionally a locale and
          # timezone.
          devices:
        )
        end

        sig do
          override.returns(
            {
              devices:
                T::Array[
                  Knockapi::Recipients::PushChannelDataDevicesOnly::Device
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
                Knockapi::Recipients::PushChannelDataDevicesOnly::Device,
                Knockapi::Internal::AnyHash
              )
            end

          # The device token to send the push notification to.
          sig { returns(String) }
          attr_accessor :token

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
              token: String,
              locale: T.nilable(String),
              timezone: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The device token to send the push notification to.
            token:,
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
                token: String,
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
