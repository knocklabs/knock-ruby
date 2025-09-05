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
                Knockapi::Recipients::PushChannelData::OrHash,
                Knockapi::Recipients::SlackChannelData::OrHash,
                Knockapi::Recipients::MsTeamsChannelData::OrHash,
                Knockapi::Recipients::DiscordChannelData::OrHash,
                Knockapi::Recipients::OneSignalChannelData::OrHash,
                Knockapi::Recipients::RecipientsChannelData::Data::AwsSnsPushChannelData::OrHash
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
                Knockapi::Recipients::PushChannelData,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData,
                Knockapi::Recipients::OneSignalChannelData,
                Knockapi::Recipients::RecipientsChannelData::Data::AwsSnsPushChannelData
              )
            end

          class AwsSnsPushChannelData < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::RecipientsChannelData::Data::AwsSnsPushChannelData,
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
