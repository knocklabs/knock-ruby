# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::BaseModel
        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def chat
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def chat=(_)
        end

        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def email
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def email=(_)
        end

        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def http
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def http=(_)
        end

        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def in_app_feed
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def in_app_feed=(_)
        end

        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def push
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def push=(_)
        end

        sig { returns(T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))) }
        def sms
        end

        sig do
          params(_: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
            .returns(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting))
        end
        def sms=(_)
        end

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

        class Chat < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end

        class Email < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end

        class HTTP < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end

        class InAppFeed < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end

        class Push < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end

        class SMS < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, T::Boolean], [NilClass, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]]
                )
            end
            private def variants
            end
          end
        end
      end
    end
  end
end
