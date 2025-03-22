# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::BaseModel
        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :chat

        sig do
          params(
            chat: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :chat

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :email

        sig do
          params(
            email: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :email

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :http

        sig do
          params(
            http: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :http

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :in_app_feed

        sig do
          params(
            in_app_feed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :in_app_feed

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :push

        sig do
          params(
            push: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :push

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        attr_reader :sms

        sig do
          params(
            sms: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .void
        end
        attr_writer :sms

        # Channel type preferences
        sig do
          params(
            chat: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash),
            email: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash),
            http: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash),
            in_app_feed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash),
            push: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash),
            sms: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, Knockapi::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil)
        end

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
        def to_hash
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Chat
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Email
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module HTTP
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module InAppFeed
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Push
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module SMS
          extend Knockapi::Union

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
          def self.variants
          end
        end
      end
    end
  end
end
