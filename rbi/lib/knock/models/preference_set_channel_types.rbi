# typed: strong

module Knock
  module Models
    class PreferenceSetChannelTypes < Knock::BaseModel
      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def chat
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def chat=(_)
      end

      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def email
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def email=(_)
      end

      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def http
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def http=(_)
      end

      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def in_app_feed
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def in_app_feed=(_)
      end

      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def push
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def push=(_)
      end

      sig { returns(T.nilable(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))) }
      def sms
      end

      sig do
        params(_: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
          .returns(T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting))
      end
      def sms=(_)
      end

      sig do
        params(
          chat: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
          email: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
          http: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
          in_app_feed: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
          push: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
          sms: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting)
        )
          .returns(T.attached_class)
      end
      def self.new(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil)
      end

      sig do
        override
          .returns(
            {
              chat: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
              email: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
              http: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
              in_app_feed: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
              push: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting),
              sms: T.any(T::Boolean, Knock::Models::PreferenceSetChannelTypeSetting)
            }
          )
      end
      def to_hash
      end

      class Chat < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end

      class Email < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end

      class HTTP < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end

      class InAppFeed < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end

      class Push < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end

      class SMS < Knock::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetChannelTypeSetting]]) }
          private def variants
          end
        end
      end
    end
  end
end
