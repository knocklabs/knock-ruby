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

      # Add subscriptions for an object. If a subscription already exists, it will be
      # updated. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `recipient`.
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

      # Delete subscriptions for the specified recipients from an object. Returns the
      # list of deleted subscriptions.
      #
      # @overload delete_subscriptions(collection, object_id_, recipients:, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
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

      # Returns the channel data for the specified object and channel.
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

      # Returns the preference set for the specified object.
      #
      # @overload get_preferences(collection, object_id_, id, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectGetPreferencesParams
      def get_preferences(collection, object_id_, id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, id],
          model: Knockapi::Models::Recipients::PreferenceSet,
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

      # Returns a paginated list of preference sets for the specified object.
      #
      # @overload list_preferences(collection, object_id_, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::PreferenceSet>]
      #
      # @see Knockapi::Models::ObjectListPreferencesParams
      def list_preferences(collection, object_id_, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/preferences", collection, object_id_],
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::PreferenceSet],
          options: params[:request_options]
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

      # List subscriptions for an object. Either list the recipients that subscribe to
      # the provided object, or list the objects that the provided object is subscribed
      # to. Determined by the `mode` query parameter.
      #
      # @overload list_subscriptions(collection, object_id_, after: nil, before: nil, include: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param after [String]
      # @param before [String]
      # @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>]
      # @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      # @param objects [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      # @param page_size [Integer]
      # @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
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

      # Sets the channel data for the specified object and channel.
      #
      # @overload set_channel_data(collection, object_id_, channel_id, data:, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param channel_id [String]
      # @param data [Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::ObjectSetChannelDataParams
      def set_channel_data(collection, object_id_, channel_id, params)
        parsed, options = Knockapi::Models::ObjectSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          body: parsed,
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: options
        )
      end

      # Updates the preference set for the specified object.
      #
      # @overload set_preferences(collection, object_id_, id, categories: nil, channel_types: nil, workflows: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param id [String]
      # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
      # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectSetPreferencesParams
      def set_preferences(collection, object_id_, id, params = {})
        parsed, options = Knockapi::Models::ObjectSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, id],
          body: parsed,
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: options
        )
      end

      # Unsets the channel data for the specified object and channel.
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
