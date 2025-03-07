# typed: strong

module Knock
  module Models
    module Objects
      class BulkAddSubscriptionsParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription]) }
        def subscriptions
        end

        sig do
          params(_: T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription])
            .returns(T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription])
        end
        def subscriptions=(_)
        end

        sig do
          params(
            subscriptions: T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(subscriptions:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                subscriptions: T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription],
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Subscription < Knock::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig do
            returns(
              T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
            )
          end
          def recipients
          end

          sig do
            params(
              _: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
            )
              .returns(
                T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
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
              recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
              properties: T.nilable(T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(id:, recipients:, properties: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
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
