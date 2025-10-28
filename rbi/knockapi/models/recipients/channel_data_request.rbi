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
              Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly,
              Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly,
              Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly,
              Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly,
              Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly,
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
                Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly::OrHash,
                Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly::OrHash,
                Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly::OrHash,
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
                  Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly,
                  Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly,
                  Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly,
                  Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly,
                  Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly,
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
                Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly,
                Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly,
                Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly,
                Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly,
                Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            end

          class PushChannelDataTokensOnly < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of push channel tokens.
            sig { returns(T::Array[String]) }
            attr_accessor :tokens

            # Push channel data.
            sig { params(tokens: T::Array[String]).returns(T.attached_class) }
            def self.new(
              # A list of push channel tokens.
              tokens:
            )
            end

            sig { override.returns({ tokens: T::Array[String] }) }
            def to_hash
            end
          end

          class PushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of devices. Each device contains a token, and optionally a locale and
            # timezone.
            sig do
              returns(
                T::Array[
                  Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device
                ]
              )
            end
            attr_accessor :devices

            # Push channel data.
            sig do
              params(
                devices:
                  T::Array[
                    Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device::OrHash
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
                      Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device
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
                    Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device,
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

          class AwssnsPushChannelDataTargetArNsOnly < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly,
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

          class AwssnsPushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of devices. Each device contains a target_arn, and optionally a locale
            # and timezone.
            sig do
              returns(
                T::Array[
                  Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device
                ]
              )
            end
            attr_accessor :devices

            # AWS SNS push channel data.
            sig do
              params(
                devices:
                  T::Array[
                    Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device::OrHash
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
                      Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device
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
                    Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device,
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

          class OneSignalChannelDataPlayerIDsOnly < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of OneSignal player IDs.
            sig { returns(T::Array[String]) }
            attr_accessor :player_ids

            # OneSignal channel data.
            sig do
              params(player_ids: T::Array[String]).returns(T.attached_class)
            end
            def self.new(
              # A list of OneSignal player IDs.
              player_ids:
            )
            end

            sig { override.returns({ player_ids: T::Array[String] }) }
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
