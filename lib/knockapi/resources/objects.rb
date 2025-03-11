# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      # @return [Knockapi::Resources::Objects::Bulk]
      attr_reader :bulk

      # List objects in a collection
      #
      # @param collection [String] Collection name
      #
      # @param params [Knockapi::Models::ObjectListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Object>]
      #
      def list(collection, params = {})
        parsed, options = Knockapi::Models::ObjectListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s", collection],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Object,
          options: options
        )
      end

      # Delete an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def delete(collection, object_id_, params = {})
        @client.request(
          method: :delete,
          path: ["v1/objects/%0s/%1s", collection, object_id_],
          model: String,
          options: params[:request_options]
        )
      end

      # Add subscriptions for an object. If a subscription already exists, it will be
      #   updated.
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectAddSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] :recipients The recipients to subscribe to the object
      #
      #   @option params [Hash{Symbol=>Object}, nil] :properties The custom properties associated with the subscription
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      def add_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::Models::ObjectAddSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription],
          options: options
        )
      end

      # Delete subscriptions
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectDeleteSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] :recipients
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Recipients::Subscription>]
      #
      def delete_subscriptions(collection, object_id_, params)
        parsed, options = Knockapi::Models::ObjectDeleteSubscriptionsParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription],
          options: options
        )
      end

      # Get an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Object]
      #
      def get(collection, object_id_, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s", collection, object_id_],
          model: Knockapi::Models::Object,
          options: params[:request_options]
        )
      end

      # Get channel data
      #
      # @param collection [String] The collection
      #
      # @param object_id_ [String] The object ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::ObjectGetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      def get_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/channel_data/%2s", collection, object_id_, channel_id],
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # Get a preference set
      #
      # @param collection [String] Collection
      #
      # @param object_id_ [String] Object ID
      #
      # @param preference_set_id [String] Preference set ID
      #
      # @param params [Knockapi::Models::ObjectGetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :tenant Tenant ID
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      def get_preferences(collection, object_id_, preference_set_id, params = {})
        parsed, options = Knockapi::Models::ObjectGetPreferencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/preferences/%2s", collection, object_id_, preference_set_id],
          query: parsed,
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: options
        )
      end

      # List messages
      #
      # @param collection [String] The collection name
      #
      # @param object_id_ [String] The object ID
      #
      # @param params [Knockapi::Models::ObjectListMessagesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [String] :channel_id The channel ID
      #
      #   @option params [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>] :engagement_status The engagement status of the message
      #
      #   @option params [Array<String>] :message_ids The message IDs to filter messages by
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :source The source of the message (workflow key)
      #
      #   @option params [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>] :status The status of the message
      #
      #   @option params [String] :tenant The tenant ID
      #
      #   @option params [String] :trigger_data The trigger data to filter messages by. Must be a valid JSON object.
      #
      #   @option params [Array<String>] :workflow_categories The workflow categories to filter messages by
      #
      #   @option params [String] :workflow_recipient_run_id The workflow recipient run ID to filter messages by
      #
      #   @option params [String] :workflow_run_id The workflow run ID to filter messages by
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Message>]
      #
      def list_messages(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/messages", collection, object_id_],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # List schedules
      #
      # @param collection [String] The collection of the object to list schedules for
      #
      # @param object_id_ [String] The ID of the object to list schedules for
      #
      # @param params [Knockapi::Models::ObjectListSchedulesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :tenant The ID of the tenant to list schedules for
      #
      #   @option params [String] :workflow The ID of the workflow to list schedules for
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Schedule>]
      #
      def list_schedules(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/schedules", collection, object_id_],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # List subscriptions for an object. Either list all subscriptions that belong to
      #   the object, or all subscriptions that this object has. Determined by the `mode`
      #   query parameter.
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectListSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode] :mode Mode of the request
      #
      #   @option params [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference>] :objects Objects to filter by (only used if mode is `recipient`)
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>] :recipients Recipients to filter by (only used if mode is `object`)
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Recipients::Subscription>]
      #
      def list_subscriptions(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Recipients::Subscription,
          options: options
        )
      end

      # Set (identify) an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knockapi::Models::ObjectSetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Object]
      #
      def set(collection, object_id_, params = {})
        parsed, options = Knockapi::Models::ObjectSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s", collection, object_id_],
          body: parsed,
          model: Knockapi::Models::Object,
          options: options
        )
      end

      # Set channel data
      #
      # @param collection [String] The collection
      #
      # @param object_id_ [String] The object ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::ObjectSetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] :data Channel data for push providers
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      def set_channel_data(collection, object_id_, channel_id, params)
        parsed, options = Knockapi::Models::ObjectSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s/channel_data/%2s", collection, object_id_, channel_id],
          body: parsed,
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: options
        )
      end

      # Update a preference set
      #
      # @param collection [String] Collection
      #
      # @param object_id_ [String] Object ID
      #
      # @param preference_set_id [String] Preference set ID
      #
      # @param params [Knockapi::Models::ObjectSetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Boolean, Knockapi::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] :categories A setting for a preference set, where the key in the object is the category, and
      #     the values are the preference settings for that category.
      #
      #   @option params [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] :channel_types Channel type preferences
      #
      #   @option params [Hash{Symbol=>Boolean, Knockapi::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] :workflows A setting for a preference set, where the key in the object is the workflow key,
      #     and the values are the preference settings for that workflow.
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      def set_preferences(collection, object_id_, preference_set_id, params = {})
        parsed, options = Knockapi::Models::ObjectSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s/preferences/%2s", collection, object_id_, preference_set_id],
          body: parsed,
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: options
        )
      end

      # Unset channel data
      #
      # @param collection [String] The collection
      #
      # @param object_id_ [String] The object ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::ObjectUnsetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def unset_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/objects/%0s/%1s/channel_data/%2s", collection, object_id_, channel_id],
          model: String,
          options: params[:request_options]
        )
      end

      # @param client [Knockapi::Client]
      #
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Objects::Bulk.new(client: client)
      end
    end
  end
end
