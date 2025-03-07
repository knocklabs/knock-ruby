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
            .returns(Knock::Models::Objects::BulkDeleteResponse)
        end
        def delete(collection, object_ids:, request_options: {})
        end

        sig do
          params(
            collection: String,
            subscriptions: T::Array[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Objects::BulkAddSubscriptionsResponse)
        end
        def add_subscriptions(collection, subscriptions:, request_options: {})
        end

        sig do
          params(
            collection: String,
            objects: T::Array[Knock::Models::InlineObjectRequest],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Objects::BulkSetResponse)
        end
        def set(collection, objects:, request_options: {})
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
