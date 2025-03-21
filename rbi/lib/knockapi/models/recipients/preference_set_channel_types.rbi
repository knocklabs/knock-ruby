# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::BaseModel
        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def chat
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def chat=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def email
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def email=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def http
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def http=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def in_app_feed
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def in_app_feed=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def push
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def push=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def sms
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def sms=(_)
        end

        # Channel type preferences
        sig do
          params(
            chat: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
            email: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
            http: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
            in_app_feed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
            push: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting),
            sms: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)
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

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Email
          extend Knockapi::Union

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module HTTP
          extend Knockapi::Union

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module InAppFeed
          extend Knockapi::Union

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Push
          extend Knockapi::Union

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module SMS
          extend Knockapi::Union

          Variants =
            type_template(:out) { {fixed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)} }

          class << self
            sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]) }
            def variants
            end
          end
        end
      end
    end
  end
end
