# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      # @return [Knockapi::Resources::Objects::Bulk]
      attr_reader :bulk

      # Returns a paginated list of objects from the specified collection. Optionally
      # includes preference data for the objects.
      #
      # @overload list(collection, after: nil, before: nil, include: nil, page_size: nil, request_options: {})
      #
      # @param collection [String]
      # @param after [String]
      # @param before [String]
      # @param include [Array<Symbol, Knockapi::Models::ObjectListParams::Include>]
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

      # Permanently removes an object from the specified collection. This operation
      # cannot be undone.
      #
      # @overload delete(collection, id, request_options: {})
      #
      # @param collection [String]
      # @param id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::ObjectDeleteParams
      def delete(collection, id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/objects/%1$s/%2$s", collection, id],
          model: String,
          options: params[:request_options]
        )
      end

      # Retrieves a specific object by its ID from the specified collection. Returns the
      # object with all its properties.
      #
      # @overload get(collection, id, request_options: {})
      #
      # @param collection [String]
      # @param id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectGetParams
      def get(collection, id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s", collection, id],
          model: Knockapi::Models::Object,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of messages for a specific object in the given
      # collection. Allows filtering by message status and provides various sorting
      # options.
      #
      # @overload list_messages(collection, id, after: nil, before: nil, channel_id: nil, engagement_status: nil, inserted_at: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param collection [String]
      # @param id [String]
      # @param after [String]
      # @param before [String]
      # @param channel_id [String]
      # @param engagement_status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>]
      # @param inserted_at [Knockapi::Models::ObjectListMessagesParams::InsertedAt]
      # @param message_ids [Array<String>]
      # @param page_size [Integer]
      # @param source [String]
      # @param status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>]
      # @param tenant [String]
      # @param trigger_data [String]
      # @param workflow_categories [Array<String>]
      # @param workflow_recipient_run_id [String]
      # @param workflow_run_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::ObjectListMessagesParams
      def list_messages(collection, id, params = {})
        parsed, options = Knockapi::Models::ObjectListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/messages", collection, id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Returns a paginated list of schedules for an object.
      #
      # @overload list_schedules(collection, id, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param collection [String]
      # @param id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param tenant [String]
      # @param workflow [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ObjectListSchedulesParams
      def list_schedules(collection, id, params = {})
        parsed, options = Knockapi::Models::ObjectListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/schedules", collection, id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # Creates a new object or updates an existing one in the specified collection.
      # This operation is used to identify objects with their properties, as well as
      # optional preferences and channel data.
      #
      # @overload set(collection, id, channel_data: nil, locale: nil, preferences: nil, timezone: nil, request_options: {})
      #
      # @param collection [String]
      # @param id [String]
      # @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>]
      # @param locale [String, nil]
      # @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>]
      # @param timezone [String, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectSetParams
      def set(collection, id, params = {})
        parsed, options = Knockapi::Models::ObjectSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s", collection, id],
          body: parsed,
          model: Knockapi::Models::Object,
          options: options
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
