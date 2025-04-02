# typed: strong

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Bulk delete objects
        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The collection to delete objects from
          collection,
          # The IDs of the objects to delete
          object_ids:,
          request_options: {}
        )
        end

        # Add subscriptions for a set of objects in a single collection. If a subscription
        #   already exists, it will be updated.
        sig do
          params(
            collection: String,
            subscriptions: T::Array[T.any(Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription, Knockapi::Util::AnyHash)],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def add_subscriptions(
          # The collection to add subscriptions for
          collection,
          subscriptions:,
          request_options: {}
        )
        end

        # Bulk set objects
        sig do
          params(
            collection: String,
            objects: T::Array[T.any(Knockapi::Models::InlineObjectRequest, Knockapi::Util::AnyHash)],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(
          # The collection to set objects in
          collection,
          objects:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
