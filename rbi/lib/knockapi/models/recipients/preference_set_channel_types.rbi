# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        sig do
          returns(
            T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions))
          )
        end
        attr_reader :chat

        sig do
          params(
            chat: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :chat

        sig do
          returns(
            T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions))
          )
        end
        attr_reader :email

        sig do
          params(
            email: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :email

        sig do
          returns(
            T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions))
          )
        end
        attr_reader :http

        sig do
          params(
            http: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :http

        sig do
          returns(
            T.nilable(
              T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions)
            )
          )
        end
        attr_reader :in_app_feed

        sig do
          params(
            in_app_feed: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :in_app_feed

        sig do
          returns(
            T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions))
          )
        end
        attr_reader :push

        sig do
          params(
            push: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :push

        sig do
          returns(
            T.nilable(T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions))
          )
        end
        attr_reader :sms

        sig do
          params(
            sms: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions,
              Knockapi::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :sms

        # Channel type preferences
        sig do
          params(
            chat: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions,
              Knockapi::Internal::AnyHash
            ),
            email: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions,
              Knockapi::Internal::AnyHash
            ),
            http: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions,
              Knockapi::Internal::AnyHash
            ),
            in_app_feed: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions,
              Knockapi::Internal::AnyHash
            ),
            push: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions,
              Knockapi::Internal::AnyHash
            ),
            sms: T.any(
              T::Boolean,
              Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions,
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
                chat: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions),
                email: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions),
                http: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions),
                in_app_feed: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions),
                push: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions),
                sms: T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions)
              }
            )
        end
        def to_hash; end

        module Chat
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions]) }
          def self.variants; end
        end

        module Email
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions]) }
          def self.variants; end
        end

        module HTTP
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions]) }
          def self.variants; end
        end

        module InAppFeed
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig do
            override
              .returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions])
          end
          def self.variants; end
        end

        module Push
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions]) }
          def self.variants; end
        end

        module SMS
          extend Knockapi::Internal::Type::Union

          class Conditions < Knockapi::Internal::Type::BaseModel
            sig { returns(T::Array[Knockapi::Models::Condition]) }
            attr_accessor :conditions

            sig do
              params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
                .returns(T.attached_class)
            end
            def self.new(conditions:); end

            sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions]) }
          def self.variants; end
        end
      end
    end
  end
end
