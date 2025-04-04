# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        sig { returns(T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription]) }
        attr_accessor :subscriptions

        sig do
          params(
            subscriptions: T::Array[T.any(Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription, Knockapi::Internal::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(subscriptions:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                subscriptions: T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription],
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Subscription < Knockapi::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
            )
          end
          attr_accessor :recipients

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :properties

          sig do
            params(
              id: String,
              recipients: T::Array[
              T.any(
                String,
                Knockapi::Models::InlineIdentifyUserRequest,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::InlineObjectRequest
              )
              ],
              properties: T.nilable(T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(id:, recipients:, properties: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
                  properties: T.nilable(T::Hash[Symbol, T.anything])
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
