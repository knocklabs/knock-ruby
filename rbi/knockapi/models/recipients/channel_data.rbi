# typed: strong

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::RecipientsChannelData,
              Knockapi::Internal::AnyHash
            )
          end

        # The typename of the schema.
        sig { returns(String) }
        attr_accessor :_typename

        # The unique identifier for the channel.
        sig { returns(String) }
        attr_accessor :channel_id

        # Channel data for a given channel type.
        sig do
          returns(Knockapi::Recipients::RecipientsChannelData::Data::Variants)
        end
        attr_accessor :data

        # The type of provider.
        sig do
          returns(
            T.nilable(
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          )
        end
        attr_reader :provider

        sig do
          params(
            provider:
              Knockapi::Recipients::RecipientsChannelData::Provider::OrSymbol
          ).void
        end
        attr_writer :provider

        # Channel data for a given channel type.
        sig do
          params(
            _typename: String,
            channel_id: String,
            data:
              T.any(
                Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::OrHash,
                Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::OrHash,
                Knockapi::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly::OrHash,
                Knockapi::Recipients::SlackChannelData::OrHash,
                Knockapi::Recipients::MsTeamsChannelData::OrHash,
                Knockapi::Recipients::DiscordChannelData::OrHash
              ),
            provider:
              Knockapi::Recipients::RecipientsChannelData::Provider::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The typename of the schema.
          _typename:,
          # The unique identifier for the channel.
          channel_id:,
          # Channel data for a given channel type.
          data:,
          # The type of provider.
          provider: nil
        )
        end

        sig do
          override.returns(
            {
              _typename: String,
              channel_id: String,
              data: Knockapi::Recipients::RecipientsChannelData::Data::Variants,
              provider:
                Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
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
                Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull,
                Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull,
                Knockapi::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            end

          class PushChannelDataFull < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of devices. Each device contains a token, and optionally a locale and
            # timezone.
            sig do
              returns(
                T::Array[
                  Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device
                ]
              )
            end
            attr_accessor :devices

            # A list of push channel tokens.
            sig { returns(T::Array[String]) }
            attr_accessor :tokens

            # Push channel data.
            sig do
              params(
                devices:
                  T::Array[
                    Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device::OrHash
                  ],
                tokens: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of devices. Each device contains a token, and optionally a locale and
              # timezone.
              devices:,
              # A list of push channel tokens.
              tokens:
            )
            end

            sig do
              override.returns(
                {
                  devices:
                    T::Array[
                      Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device
                    ],
                  tokens: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class Device < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device,
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

          class AwssnsPushChannelDataFull < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull,
                  Knockapi::Internal::AnyHash
                )
              end

            # A list of devices. Each device contains a target_arn, and optionally a locale
            # and timezone.
            sig do
              returns(
                T::Array[
                  Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device
                ]
              )
            end
            attr_accessor :devices

            # A list of platform endpoint ARNs. See
            # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
            sig { returns(T::Array[String]) }
            attr_accessor :target_arns

            # AWS SNS push channel data.
            sig do
              params(
                devices:
                  T::Array[
                    Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device::OrHash
                  ],
                target_arns: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of devices. Each device contains a target_arn, and optionally a locale
              # and timezone.
              devices:,
              # A list of platform endpoint ARNs. See
              # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
              target_arns:
            )
            end

            sig do
              override.returns(
                {
                  devices:
                    T::Array[
                      Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device
                    ],
                  target_arns: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class Device < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device,
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
                  Knockapi::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly,
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
              T::Array[
                Knockapi::Recipients::RecipientsChannelData::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of provider.
        module Provider
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Recipients::RecipientsChannelData::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_FCM =
            T.let(
              :push_fcm,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          PUSH_APNS =
            T.let(
              :push_apns,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          PUSH_AWS_SNS =
            T.let(
              :push_aws_sns,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          PUSH_EXPO =
            T.let(
              :push_expo,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          PUSH_ONE_SIGNAL =
            T.let(
              :push_one_signal,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          CHAT_SLACK =
            T.let(
              :chat_slack,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          CHAT_MS_TEAMS =
            T.let(
              :chat_ms_teams,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          CHAT_DISCORD =
            T.let(
              :chat_discord,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )
          HTTP_KNOCK_WEBHOOK =
            T.let(
              :http_knock_webhook,
              Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::RecipientsChannelData::Provider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
