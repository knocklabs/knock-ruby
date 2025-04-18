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
      # @overload delete(collection, object_id_, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::ObjectDeleteParams
      def delete(collection, object_id_, params = {})
        @client.request(
          method: :delete,
          path: ["v1/objects/%1$s/%2$s", collection, object_id_],
          model: String,
          options: params[:request_options]
        )
      end

      # Add subscriptions for an object. If a subscription already exists, it will be
      # updated.
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

      # Retrieves a specific object by its ID from the specified collection. Returns the
      # object with all its properties.
      #
      # @overload get(collection, object_id_, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectGetParams
      def get(collection, object_id_, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s", collection, object_id_],
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
      # @overload get_preferences(collection, object_id_, preference_set_id, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param preference_set_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectGetPreferencesParams
      def get_preferences(collection, object_id_, preference_set_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, preference_set_id],
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of messages for a specific object in the given
      # collection. Allows filtering by message status and provides various sorting
      # options.
      #
      # @overload list_messages(collection, object_id_, after: nil, before: nil, channel_id: nil, engagement_status: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param after [String]
      # @param before [String]
      # @param channel_id [String]
      # @param engagement_status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>]
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
      def list_messages(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/messages", collection, object_id_],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Returns a paginated list of schedules for an object.
      #
      # @overload list_schedules(collection, object_id_, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
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
      def list_schedules(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/schedules", collection, object_id_],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # List subscriptions for an object. Either list all subscriptions that belong to
      # the object, or all subscriptions that this object has. Determined by the `mode`
      # query parameter.
      #
      # @overload list_subscriptions(collection, object_id_, after: nil, before: nil, include: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param after [String]
      # @param before [String]
      # @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>]
      # @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      # @param objects [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference>]
      # @param page_size [Integer]
      # @param recipients [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>]
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
      # This operation is used to identify objects with their properties and channel
      # data.
      #
      # @overload set(collection, object_id_, channel_data: nil, preferences: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectSetParams
      def set(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s", collection, object_id_],
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
      # @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
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
      # @overload set_preferences(collection, object_id_, preference_set_id, categories: nil, channel_types: nil, workflows: nil, request_options: {})
      #
      # @param collection [String]
      # @param object_id_ [String]
      # @param preference_set_id [String]
      # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
      # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectSetPreferencesParams
      def set_preferences(collection, object_id_, preference_set_id, params = {})
        parsed, options = Knockapi::Models::ObjectSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, preference_set_id],
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
