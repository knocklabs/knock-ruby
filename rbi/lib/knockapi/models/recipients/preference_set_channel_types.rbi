# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :chat

        sig do
          params(
            chat: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :chat

        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :email

        sig do
          params(
            email: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :email

        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :http

        sig do
          params(
            http: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :http

        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :in_app_feed

        sig do
          params(
            in_app_feed: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :in_app_feed

        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :push

        sig do
          params(
            push: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :push

        # Either a boolean or a setting for the given channel type.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :sms

        sig do
          params(
            sms: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :sms

        # Channel type preferences.
        sig do
          params(
            chat: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            ),
            email: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            ),
            http: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            ),
            in_app_feed: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            ),
            push: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            ),
            sms: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting,
              Knockapi::Internal::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil); end

        sig do
          override
            .returns(
              {
                chat: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
                email: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
                http: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
                in_app_feed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
                push: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
                sms: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)
              }
            )
        end
        def to_hash; end

        # Either a boolean or a setting for the given channel type.
        module Chat
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Either a boolean or a setting for the given channel type.
        module Email
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Either a boolean or a setting for the given channel type.
        module HTTP
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Either a boolean or a setting for the given channel type.
        module InAppFeed
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Either a boolean or a setting for the given channel type.
        module Push
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Either a boolean or a setting for the given channel type.
        module SMS
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end
      end
    end
  end
end
