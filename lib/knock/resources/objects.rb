# frozen_string_literal: true

module Knock
  module Resources
    class Objects
      # @return [Knock::Resources::Objects::Bulk]
      attr_reader :bulk

      # List objects in a collection
      #
      # @param collection [String] Collection name
      #
      # @param params [Knock::Models::ObjectListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Object>]
      #
      def list(collection, params = {})
        parsed, options = Knock::Models::ObjectListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s", collection],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Object,
          options: options
        )
      end

      # Delete an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knock::Models::ObjectDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param params [Knock::Models::ObjectAddSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>] :recipients The recipients to subscribe to the object
      #
      #   @option params [Hash{Symbol=>Object}, nil] :properties The custom properties associated with the subscription
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knock::Models::Subscription>]
      #
      def add_subscriptions(collection, object_id_, params)
        parsed, options = Knock::Models::ObjectAddSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knock::ArrayOf[Knock::Models::Subscription],
          options: options
        )
      end

      # Delete subscriptions
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knock::Models::ObjectDeleteSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>] :recipients
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knock::Models::Subscription>]
      #
      def delete_subscriptions(collection, object_id_, params)
        parsed, options = Knock::Models::ObjectDeleteSubscriptionsParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          body: parsed,
          model: Knock::ArrayOf[Knock::Models::Subscription],
          options: options
        )
      end

      # Get an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knock::Models::ObjectGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::Object]
      #
      def get(collection, object_id_, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s", collection, object_id_],
          model: Knock::Models::Object,
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
      # @param params [Knock::Models::ObjectGetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::ChannelData]
      #
      def get_channel_data(collection, object_id_, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/channel_data/%2s", collection, object_id_, channel_id],
          model: Knock::Models::ChannelData,
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
      # @param params [Knock::Models::ObjectGetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :tenant Tenant ID
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::PreferenceSet]
      #
      def get_preferences(collection, object_id_, preference_set_id, params = {})
        parsed, options = Knock::Models::ObjectGetPreferencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/preferences/%2s", collection, object_id_, preference_set_id],
          query: parsed,
          model: Knock::Models::PreferenceSet,
          options: options
        )
      end

      # List messages
      #
      # @param collection [String] The collection name
      #
      # @param object_id_ [String] The object ID
      #
      # @param params [Knock::Models::ObjectListMessagesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [String] :channel_id The channel ID
      #
      #   @option params [Array<Symbol, Knock::Models::ObjectListMessagesParams::EngagementStatus>] :engagement_status The engagement status of the message
      #
      #   @option params [Array<String>] :message_ids The message IDs to filter messages by
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :source The source of the message (workflow key)
      #
      #   @option params [Array<Symbol, Knock::Models::ObjectListMessagesParams::Status>] :status The status of the message
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
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Message>]
      #
      def list_messages(collection, object_id_, params = {})
        parsed, options = Knock::Models::ObjectListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/messages", collection, object_id_],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Message,
          options: options
        )
      end

      # List schedules
      #
      # @param collection [String] The collection of the object to list schedules for
      #
      # @param object_id_ [String] The ID of the object to list schedules for
      #
      # @param params [Knock::Models::ObjectListSchedulesParams, Hash{Symbol=>Object}] .
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
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Schedule>]
      #
      def list_schedules(collection, object_id_, params = {})
        parsed, options = Knock::Models::ObjectListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/schedules", collection, object_id_],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Schedule,
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
      # @param params [Knock::Models::ObjectListSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Symbol, Knock::Models::ObjectListSubscriptionsParams::Mode] :mode Mode of the request
      #
      #   @option params [Array<String, Knock::Models::ObjectListSubscriptionsParams::Object::ObjectReference>] :objects Objects to filter by (only used if mode is `recipient`)
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Array<String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>] :recipients Recipients to filter by (only used if mode is `object`)
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Subscription>]
      #
      def list_subscriptions(collection, object_id_, params = {})
        parsed, options = Knock::Models::ObjectListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/objects/%0s/%1s/subscriptions", collection, object_id_],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Subscription,
          options: options
        )
      end

      # Set (identify) an object
      #
      # @param collection [String] Collection name
      #
      # @param object_id_ [String] Object ID
      #
      # @param params [Knock::Models::ObjectSetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::Object]
      #
      def set(collection, object_id_, params = {})
        parsed, options = Knock::Models::ObjectSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s", collection, object_id_],
          body: parsed,
          model: Knock::Models::Object,
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
      # @param params [Knock::Models::ObjectSetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::Models::PushChannelData, Knock::Models::OneSignalChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData] :data Channel data for push providers
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::ChannelData]
      #
      def set_channel_data(collection, object_id_, channel_id, params)
        parsed, options = Knock::Models::ObjectSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s/channel_data/%2s", collection, object_id_, channel_id],
          body: parsed,
          model: Knock::Models::ChannelData,
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
      # @param params [Knock::Models::ObjectSetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] :categories A setting for a preference set, where the key in the object is the category, and
      #     the values are the preference settings for that category.
      #
      #   @option params [Knock::Models::PreferenceSetChannelTypes, nil] :channel_types Channel type preferences
      #
      #   @option params [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] :workflows A setting for a preference set, where the key in the object is the workflow key,
      #     and the values are the preference settings for that workflow.
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::PreferenceSet]
      #
      def set_preferences(collection, object_id_, preference_set_id, params = {})
        parsed, options = Knock::Models::ObjectSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/objects/%0s/%1s/preferences/%2s", collection, object_id_, preference_set_id],
          body: parsed,
          model: Knock::Models::PreferenceSet,
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
      # @param params [Knock::Models::ObjectUnsetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
        @bulk = Knock::Resources::Objects::Bulk.new(client: client)
      end
    end
  end
end
