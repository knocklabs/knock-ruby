# typed: strong

module Knockapi
  module Resources
    class Objects
      sig { returns(Knockapi::Resources::Objects::Bulk) }
      attr_reader :bulk

      # List objects in a collection
      sig do
        params(
          collection: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Object])
      end
      def list(
        # Collection name
        collection,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      ); end
      # Upsert subscriptions for an object
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def add_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        # The recipients to subscribe to the object
        recipients:,
        # The custom properties associated with the subscription
        properties: nil,
        request_options: {}
      ); end
      # Delete subscriptions for an object
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def delete_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        recipients:,
        request_options: {}
      ); end
      # Get channel data for an object
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def get_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # List subscriptions for an object. Either list all subscriptions that belong to
      # the object, or all subscriptions that this object has. Determined by the `mode`
      # query parameter.
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ],
          page_size: Integer,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # Mode of the request
        mode: nil,
        # Objects to filter by (only used if mode is `recipient`)
        objects: nil,
        # The page size to fetch
        page_size: nil,
        # Recipients to filter by (only used if mode is `object`)
        recipients: nil,
        request_options: {}
      ); end
      # Set channel data for an object
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def set_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # Unset channel data for an object
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def unset_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
