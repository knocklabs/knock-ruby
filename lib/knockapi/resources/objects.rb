# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      # @return [Knockapi::Resources::Objects::Bulk]
      attr_reader :bulk

      # List objects in a collection
      #
      # @overload list(collection, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param collection [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Object>]
      #
      # @see Knockapi::Models::ObjectListParams
      def list(collection, params = {})
        parsed, options = Knockapi::Models::ObjectListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s", collection],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Object,
          options: options
        )
      end

      # Upsert subscriptions for an object
      #
      # @overload add_subscriptions(collection, object_id_, recipients:, properties: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      # @param properties [Hash{Symbol=>Object}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectAddSubscriptionsParams
      def add_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::Models::ObjectAddSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::Subscription],
          options: options
        )
      end

      # Delete subscriptions for an object
      #
      # @overload delete_subscriptions(collection, object_id_, recipients:, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectDeleteSubscriptionsParams
      def delete_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::Models::ObjectDeleteSubscriptionsParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::Subscription],
          options: options
        )
      end

      # Get channel data for an object
      #
      # @overload get_channel_data(collection, object_id_, channel_id, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param channel_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::ObjectGetChannelDataParams
      def get_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # List subscriptions for an object. Either list all subscriptions that belong to
      # the object, or all subscriptions that this object has. Determined by the `mode`
      # query parameter.
      #
      # @overload list_subscriptions(collection, object_id_, after: nil, before: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param after [String]
      # @param before [String]
      # @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      # @param objects [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1>]
      # @param page_size [Integer]
      # @param recipients [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1>]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectListSubscriptionsParams
      def list_subscriptions(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Recipients::Subscription,
          options: options
        )
      end

      # Set channel data for an object
      #
      # @overload set_channel_data(collection, object_id_, channel_id, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param channel_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::ObjectSetChannelDataParams
      def set_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # Unset channel data for an object
      #
      # @overload unset_channel_data(collection, object_id_, channel_id, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param channel_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::ObjectUnsetChannelDataParams
      def unset_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          model: String,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Objects::Bulk.new(client: client)
      end
    end
  end
end
