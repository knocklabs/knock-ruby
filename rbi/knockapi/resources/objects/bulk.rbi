# typed: strong

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Bulk deletes objects from the specified collection.
        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def delete(
          # The collection this object belongs to.
          collection,
          # List of object IDs to delete.
          object_ids:,
          request_options: {}
        )
        end

        # Add subscriptions for all objects in a single collection. If a subscription for
        # an object in the collection already exists, it will be updated. This endpoint
        # also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `recipient` field.
        sig do
          params(
            collection: String,
            subscriptions:
              T::Array[
                Knockapi::Objects::BulkAddSubscriptionsParams::Subscription::OrHash
              ],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def add_subscriptions(
          # The collection this object belongs to.
          collection,
          # A nested list of subscriptions.
          subscriptions:,
          request_options: {}
        )
        end

        # Bulk sets up to 1,000 objects at a time in the specified collection.
        sig do
          params(
            collection: String,
            objects: T::Array[Knockapi::Objects::BulkSetParams::Object::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def set(
          # The collection this object belongs to.
          collection,
          # A list of objects.
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
