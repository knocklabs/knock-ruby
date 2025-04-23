# typed: strong

module Knockapi
  module Resources
    class Objects
      sig { returns(Knockapi::Resources::Objects::Bulk) }
      attr_reader :bulk

      # Returns a paginated list of objects from the specified collection. Optionally
      # includes preference data for the objects.
      sig do
        params(
          collection: String,
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::ObjectListParams::Include::OrSymbol],
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Object])
      end
      def list(
        # The collection this object belongs to.
        collection,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Includes preferences of the objects in the response.
        include: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Add subscriptions for an object. If a subscription already exists, it will be
      # updated. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `recipient`.
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
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The recipients of the subscription.
        recipients:,
        # The custom properties associated with the recipients of the subscription.
        properties: nil,
        request_options: {}
      ); end
      # Delete subscriptions for the specified recipients from an object. Returns the
      # list of deleted subscriptions.
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def delete_subscriptions(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The recipients of the subscription.
        recipients:,
        request_options: {}
      ); end
      # Returns the channel data for the specified object and channel.
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
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        request_options: {}
      ); end
      # Returns a paginated list of preference sets for the specified object.
      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::PreferenceSet])
      end
      def list_preferences(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        request_options: {}
      ); end
      # List subscriptions for an object. Either list the recipients that subscribe to
      # the provided object, or list the objects that the provided object is subscribed
      # to. Determined by the `mode` query parameter.
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol],
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Additional fields to include in the response.
        include: nil,
        # Mode of the request.
        mode: nil,
        # Objects to filter by (only used if mode is `recipient`).
        objects: nil,
        # The number of items per page.
        page_size: nil,
        # Recipients to filter by (only used if mode is `object`).
        recipients: nil,
        request_options: {}
      ); end
      # Sets the channel data for the specified object and channel.
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          data: T.any(
            Knockapi::Models::Recipients::PushChannelData,
            Knockapi::Internal::AnyHash,
            Knockapi::Models::Recipients::OneSignalChannelData,
            Knockapi::Models::Recipients::SlackChannelData,
            Knockapi::Models::Recipients::MsTeamsChannelData,
            Knockapi::Models::Recipients::DiscordChannelData
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def set_channel_data(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        # Channel data for a given channel type.
        data:,
        request_options: {}
      ); end
      # Unsets the channel data for the specified object and channel.
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
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
