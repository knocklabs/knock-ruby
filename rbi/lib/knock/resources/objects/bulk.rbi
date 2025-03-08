# typed: strong

module Knock
  module Resources
    class Objects
      class Bulk
        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def delete(collection, object_ids:, request_options: {})
        end

        sig do
          params(
            collection: String,
            subscriptions: T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def add_subscriptions(collection, subscriptions:, request_options: {})
        end

        sig do
          params(
            collection: String,
            objects: T::Array[Knock::Models::InlineObjectRequest],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def set(collection, objects:, request_options: {})
        end

        sig { params(client: Knock::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
