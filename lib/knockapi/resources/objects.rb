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
      # @param collection [String] The collection this object belongs to.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param include [Array<Symbol, Knockapi::Models::ObjectListParams::Include>] Includes preferences of the objects in the response.
      #
      # @param page_size [Integer] The number of items per page (defaults to 50).
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Object>]
      #
      # @see Knockapi::Models::ObjectListParams
      def list(collection, params = {})
        parsed, options = Knockapi::ObjectListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s", collection],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Object,
          options: options
        )
      end

      # Permanently removes an object from the specified collection. This operation
      # cannot be undone.
      #
      # @overload delete(collection, id, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param id [String] Unique identifier for the object.
      #
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

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectAddSubscriptionsParams} for more details.
      #
      # Add subscriptions for an object. If a subscription already exists, it will be
      # updated. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `recipient`.
      #
      # @overload add_subscriptions(collection, object_id_, recipients:, properties: nil, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients of the subscription. You can subscribe up to 100 recipients to an
      #
      # @param properties [Hash{Symbol=>Object}, nil] The custom properties associated with the subscription relationship.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectAddSubscriptionsParams
      def add_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::ObjectAddSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::Subscription],
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectDeleteSubscriptionsParams} for more details.
      #
      # Delete subscriptions for the specified recipients from an object. Returns the
      # list of deleted subscriptions.
      #
      # @overload delete_subscriptions(collection, object_id_, recipients:, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] The recipients of the subscription. You can subscribe up to 100 recipients to an
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectDeleteSubscriptionsParams
      def delete_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::ObjectDeleteSubscriptionsParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::Subscription],
          options: options
        )
      end

      # Retrieves a specific object by its ID from the specified collection. Returns the
      # object with all its properties.
      #
      # @overload get(collection, id, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param id [String] Unique identifier for the object.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectGetParams
      def get(collection, id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s", collection, id],
          model: Knockapi::Object,
          options: params[:request_options]
        )
      end

      # Returns the channel data for the specified object and channel.
      #
      # @overload get_channel_data(collection, object_id_, channel_id, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::ObjectGetChannelDataParams
      def get_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          model: Knockapi::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # Returns the preference set for the specified object and preference set `id`.
      #
      # @overload get_preferences(collection, object_id_, id, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param id [String] Unique identifier for the preference set.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectGetPreferencesParams
      def get_preferences(collection, object_id_, id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, id],
          model: Knockapi::Recipients::PreferenceSet,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectListMessagesParams} for more details.
      #
      # Returns a paginated list of messages for a specific object in the given
      # collection. Allows filtering by message status and provides various sorting
      # options.
      #
      # @overload list_messages(collection, id, after: nil, before: nil, channel_id: nil, engagement_status: nil, inserted_at: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param id [String] Unique identifier for the object.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param channel_id [String] Limits the results to items with the corresponding channel ID.
      #
      # @param engagement_status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>] Limits the results to messages with the given engagement status.
      #
      # @param inserted_at [Knockapi::Models::ObjectListMessagesParams::InsertedAt]
      #
      # @param message_ids [Array<String>] Limits the results to only the message IDs given (max 50). Note: when using this
      #
      # @param page_size [Integer] The number of items per page (defaults to 50).
      #
      # @param source [String] Limits the results to messages triggered by the given workflow key.
      #
      # @param status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>] Limits the results to messages with the given delivery status.
      #
      # @param tenant [String] Limits the results to items with the corresponding tenant.
      #
      # @param trigger_data [String] Limits the results to only messages that were generated with the given data. See
      #
      # @param workflow_categories [Array<String>] Limits the results to messages related to any of the provided categories.
      #
      # @param workflow_recipient_run_id [String] Limits the results to messages for a specific recipient's workflow run.
      #
      # @param workflow_run_id [String] Limits the results to messages associated with the top-level workflow run ID ret
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::ItemsCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::ObjectListMessagesParams
      def list_messages(collection, id, params = {})
        parsed, options = Knockapi::ObjectListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/messages", collection, id],
          query: parsed,
          page: Knockapi::Internal::ItemsCursor,
          model: Knockapi::Message,
          options: options
        )
      end

      # Returns a paginated list of preference sets for the specified object.
      #
      # @overload list_preferences(collection, object_id_, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Recipients::PreferenceSet>]
      #
      # @see Knockapi::Models::ObjectListPreferencesParams
      def list_preferences(collection, object_id_, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/preferences", collection, object_id_],
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet],
          options: params[:request_options]
        )
      end

      # Returns a paginated list of schedules for an object.
      #
      # @overload list_schedules(collection, id, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param collection [String] The collection of the object to list schedules for.
      #
      # @param id [String] The ID of the object to list schedules for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page (defaults to 50).
      #
      # @param tenant [String] Filter schedules by tenant id.
      #
      # @param workflow [String] Filter schedules by workflow id.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ObjectListSchedulesParams
      def list_schedules(collection, id, params = {})
        parsed, options = Knockapi::ObjectListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/schedules", collection, id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Schedule,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectListSubscriptionsParams} for more details.
      #
      # List subscriptions for an object. Either list the recipients that subscribe to
      # the provided object, or list the objects that the provided object is subscribed
      # to. Determined by the `mode` query parameter.
      #
      # @overload list_subscriptions(collection, object_id_, after: nil, before: nil, include: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>] Additional fields to include in the response.
      #
      # @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode] Mode of the request. `recipient` to list the objects that the provided object is
      #
      # @param objects [Array<Knockapi::Models::ObjectListSubscriptionsParams::Object>] Objects to filter by (only used if mode is `recipient`).
      #
      # @param page_size [Integer] The number of items per page (defaults to 50).
      #
      # @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] Recipients to filter by (only used if mode is `object`).
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::ObjectListSubscriptionsParams
      def list_subscriptions(collection, object_id_, params = {})
        parsed, options = Knockapi::ObjectListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%1$s/%2$s/subscriptions", collection, object_id_],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Recipients::Subscription,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectSetParams} for more details.
      #
      # Creates a new object or updates an existing one in the specified collection.
      # This operation is used to identify objects with their properties, as well as
      # optional preferences and channel data.
      #
      # @overload set(collection, id, channel_data: nil, locale: nil, preferences: nil, timezone: nil, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param id [String] Unique identifier for the object.
      #
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}] A request to set channel data for a type of channel inline.
      #
      # @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
      #
      # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}] Inline set preferences for a recipient, where the key is the preference set id.
      #
      # @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Object]
      #
      # @see Knockapi::Models::ObjectSetParams
      def set(collection, id, params = {})
        parsed, options = Knockapi::ObjectSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s", collection, id],
          body: parsed,
          model: Knockapi::Object,
          options: options
        )
      end

      # Sets the channel data for the specified object and channel. If no object exists
      # in the current environment for the given `collection` and `object_id`, Knock
      # will create the object as part of this request.
      #
      # @overload set_channel_data(collection, object_id_, channel_id, data:, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
      # @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::ObjectSetChannelDataParams
      def set_channel_data(collection, object_id_, channel_id, params)
        parsed, options = Knockapi::ObjectSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/channel_data/%3$s", collection, object_id_, channel_id],
          body: parsed,
          model: Knockapi::Recipients::RecipientsChannelData,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ObjectSetPreferencesParams} for more details.
      #
      # Sets preferences within the given preference set. This is a destructive
      # operation and will replace any existing preferences with the preferences given.
      # If no object exists in the current environment for the given `:collection` and
      # `:object_id`, Knock will create the object as part of this request. The
      # preference set `:id` can be either `default` or a `tenant.id`. Learn more about
      # [per-tenant preferences](/preferences/tenant-preferences).
      #
      # @overload set_preferences(collection, object_id_, id, categories: nil, channel_types: nil, workflows: nil, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param id [String] Unique identifier for the preference set.
      #
      # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
      #
      # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
      #
      # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::ObjectSetPreferencesParams
      def set_preferences(collection, object_id_, id, params = {})
        parsed, options = Knockapi::ObjectSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%1$s/%2$s/preferences/%3$s", collection, object_id_, id],
          body: parsed,
          model: Knockapi::Recipients::PreferenceSet,
          options: options
        )
      end

      # Unsets the channel data for the specified object and channel.
      #
      # @overload unset_channel_data(collection, object_id_, channel_id, request_options: {})
      #
      # @param collection [String] The collection this object belongs to.
      #
      # @param object_id_ [String] Unique identifier for the object.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
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
