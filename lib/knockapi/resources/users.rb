# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      # @return [Knockapi::Resources::Users::Feeds]
      attr_reader :feeds

      # @return [Knockapi::Resources::Users::Bulk]
      attr_reader :bulk

      # Identify user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Time, nil] :created_at
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::User]
      #
      # @see Knockapi::Models::UserUpdateParams
      def update(user_id, params = {})
        parsed, options = Knockapi::Models::UserUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s", user_id],
          body: parsed,
          model: Knockapi::Models::User,
          options: options
        )
      end

      # List users
      #
      # @param params [Knockapi::Models::UserListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::User>]
      #
      # @see Knockapi::Models::UserListParams
      def list(params = {})
        parsed, options = Knockapi::Models::UserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/users",
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::User,
          options: options
        )
      end

      # Delete user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      # @see Knockapi::Models::UserDeleteParams
      def delete(user_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/users/%1$s", user_id],
          model: String,
          options: params[:request_options]
        )
      end

      # Get user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::User]
      #
      # @see Knockapi::Models::UserGetParams
      def get(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s", user_id],
          model: Knockapi::Models::User,
          options: params[:request_options]
        )
      end

      # Get channel data
      #
      # @param user_id [String] The user ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::UserGetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::UserGetChannelDataParams
      def get_channel_data(user_id, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/channel_data/%2$s", user_id, channel_id],
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # Get preference set
      #
      # @param user_id [String] User ID
      #
      # @param preference_set_id [String] Preference set ID
      #
      # @param params [Knockapi::Models::UserGetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :tenant Tenant ID
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::UserGetPreferencesParams
      def get_preferences(user_id, preference_set_id, params = {})
        parsed, options = Knockapi::Models::UserGetPreferencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/preferences/%2$s", user_id, preference_set_id],
          query: parsed,
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: options
        )
      end

      # List messages
      #
      # @param user_id [String] The user ID
      #
      # @param params [Knockapi::Models::UserListMessagesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [String] :channel_id The channel ID
      #
      #   @option params [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>] :engagement_status The engagement status of the message
      #
      #   @option params [Array<String>] :message_ids The message IDs to filter messages by
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :source The source of the message (workflow key)
      #
      #   @option params [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>] :status The status of the message
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
      # @see Knockapi::Models::UserListMessagesParams
      def list_messages(user_id, params = {})
        parsed, options = Knockapi::Models::UserListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/messages", user_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # List preference sets
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserListPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Recipients::PreferenceSet>]
      #
      # @see Knockapi::Models::UserListPreferencesParams
      def list_preferences(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/preferences", user_id],
          model: Knockapi::ArrayOf[Knockapi::Models::Recipients::PreferenceSet],
          options: params[:request_options]
        )
      end

      # List schedules
      #
      # @param user_id [String] The ID of the user to list schedules for
      #
      # @param params [Knockapi::Models::UserListSchedulesParams, Hash{Symbol=>Object}] .
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
      # @see Knockapi::Models::UserListSchedulesParams
      def list_schedules(user_id, params = {})
        parsed, options = Knockapi::Models::UserListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/schedules", user_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # List subscriptions
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserListSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::UserListSubscriptionsParams
      def list_subscriptions(user_id, params = {})
        parsed, options = Knockapi::Models::UserListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/subscriptions", user_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Recipients::Subscription,
          options: options
        )
      end

      # Merge two users together, where the user specified with the `from_user_id` param
      #   will be merged into the user specified by `user_id`.
      #
      # @param user_id [String] User ID
      #
      # @param params [Knockapi::Models::UserMergeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :from_user_id The user ID to merge from
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::User]
      #
      # @see Knockapi::Models::UserMergeParams
      def merge(user_id, params)
        parsed, options = Knockapi::Models::UserMergeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%1$s/merge", user_id],
          body: parsed,
          model: Knockapi::Models::User,
          options: options
        )
      end

      # Set channel data
      #
      # @param user_id [String] The user ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::UserSetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] :data Channel data for push providers
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::UserSetChannelDataParams
      def set_channel_data(user_id, channel_id, params)
        parsed, options = Knockapi::Models::UserSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s/channel_data/%2$s", user_id, channel_id],
          body: parsed,
          model: Knockapi::Models::Recipients::RecipientsChannelData,
          options: options
        )
      end

      # Updates a complete preference set for a user. This is a destructive operation
      #   that will replace the existing preference set for the user.
      #
      # @param user_id [String] User ID
      #
      # @param preference_set_id [String] Preference set ID
      #
      # @param params [Knockapi::Models::UserSetPreferencesParams, Hash{Symbol=>Object}] .
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
      # @see Knockapi::Models::UserSetPreferencesParams
      def set_preferences(user_id, preference_set_id, params = {})
        parsed, options = Knockapi::Models::UserSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s/preferences/%2$s", user_id, preference_set_id],
          body: parsed,
          model: Knockapi::Models::Recipients::PreferenceSet,
          options: options
        )
      end

      # Unset channel data
      #
      # @param user_id [String] The user ID
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knockapi::Models::UserUnsetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      # @see Knockapi::Models::UserUnsetChannelDataParams
      def unset_channel_data(user_id, channel_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/users/%1$s/channel_data/%2$s", user_id, channel_id],
          model: String,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @feeds = Knockapi::Resources::Users::Feeds.new(client: client)
        @bulk = Knockapi::Resources::Users::Bulk.new(client: client)
      end
    end
  end
end
