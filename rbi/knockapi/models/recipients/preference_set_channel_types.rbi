# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PreferenceSetChannelTypes,
              Knockapi::Internal::AnyHash
            )
          end

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :chat

        sig do
          params(
            chat:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :chat

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :email

        sig do
          params(
            email:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :email

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :http

        sig do
          params(
            http:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :http

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :in_app_feed

        sig do
          params(
            in_app_feed:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :in_app_feed

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :push

        sig do
          params(
            push:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :push

        # Whether the channel type is enabled for the preference set.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            )
          )
        end
        attr_reader :sms

        sig do
          params(
            sms:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).void
        end
        attr_writer :sms

        # Channel type preferences.
        sig do
          params(
            chat:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              ),
            email:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              ),
            http:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              ),
            in_app_feed:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              ),
            push:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              ),
            sms:
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the channel type is enabled for the preference set.
          chat: nil,
          # Whether the channel type is enabled for the preference set.
          email: nil,
          # Whether the channel type is enabled for the preference set.
          http: nil,
          # Whether the channel type is enabled for the preference set.
          in_app_feed: nil,
          # Whether the channel type is enabled for the preference set.
          push: nil,
          # Whether the channel type is enabled for the preference set.
          sms: nil
        )
        end

        sig do
          override.returns(
            {
              chat:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                ),
              email:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                ),
              http:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                ),
              in_app_feed:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                ),
              push:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                ),
              sms:
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetChannelTypeSetting
                )
            }
          )
        end
        def to_hash
        end

        # Whether the channel type is enabled for the preference set.
        module Chat
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::Chat::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Whether the channel type is enabled for the preference set.
        module Email
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::Email::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Whether the channel type is enabled for the preference set.
        module HTTP
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::HTTP::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Whether the channel type is enabled for the preference set.
        module InAppFeed
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::InAppFeed::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Whether the channel type is enabled for the preference set.
        module Push
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::Push::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Whether the channel type is enabled for the preference set.
        module SMS
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelTypeSetting
              )
            end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetChannelTypes::SMS::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
