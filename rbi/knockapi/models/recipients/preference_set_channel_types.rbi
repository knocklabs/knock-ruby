# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        # Whether the channel type is enabled for the preference set.
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

        # Whether the channel type is enabled for the preference set.
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

        # Whether the channel type is enabled for the preference set.
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

        # Whether the channel type is enabled for the preference set.
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

        # Whether the channel type is enabled for the preference set.
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

        # Whether the channel type is enabled for the preference set.
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
        ); end
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

        # Whether the channel type is enabled for the preference set.
        module Chat
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Whether the channel type is enabled for the preference set.
        module Email
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Whether the channel type is enabled for the preference set.
        module HTTP
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Whether the channel type is enabled for the preference set.
        module InAppFeed
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Whether the channel type is enabled for the preference set.
        module Push
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end

        # Whether the channel type is enabled for the preference set.
        module SMS
          extend Knockapi::Internal::Type::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants; end
        end
      end
    end
  end
end
