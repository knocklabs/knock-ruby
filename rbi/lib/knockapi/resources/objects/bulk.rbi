# typed: strong

module Knockapi
  module Resources
    class Objects
      class Bulk
        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(collection, object_ids:, request_options: {})
        end

        sig do
          params(
            collection: String,
            subscriptions: T::Array[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def add_subscriptions(collection, subscriptions:, request_options: {})
        end

        sig do
          params(
            collection: String,
            objects: T::Array[Knockapi::Models::InlineObjectRequest],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(collection, objects:, request_options: {})
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
