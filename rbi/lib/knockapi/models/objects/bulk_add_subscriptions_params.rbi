# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkAddSubscriptionsParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription]) }
        def subscriptions
        end

        sig do
          params(_: T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription])
            .returns(T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription])
        end
        def subscriptions=(_)
        end

        sig do
          params(
            subscriptions: T::Array[T.any(Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription, Knockapi::Util::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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

        class Subscription < Knockapi::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig do
            returns(
              T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
            )
          end
          def recipients
          end

          sig do
            params(
              _: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
            )
              .returns(
                T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
              )
          end
          def recipients=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def properties
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
          end
          def properties=(_)
          end

          sig do
            params(
              id: String,
              recipients: T::Array[
              T.any(
                String,
                Knockapi::Models::InlineIdentifyUserRequest,
                Knockapi::Util::AnyHash,
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
