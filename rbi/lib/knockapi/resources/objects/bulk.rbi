# typed: strong

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Deletes objects in bulk for a given collection
        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The collection to delete objects from
          collection,
          # The IDs of the objects to delete
          object_ids:,
          request_options: {}
        ); end
        # Bulk upserts subscriptions for a set of objects in a single collection
        sig do
          params(
            collection: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def add_subscriptions(
          # The collection to upsert subscriptions for
          collection,
          request_options: {}
        ); end
        # Sets objects in bulk for a given collection
        sig do
          params(
            collection: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(
          # The collection to set objects in
          collection,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
