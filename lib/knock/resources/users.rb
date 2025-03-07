# frozen_string_literal: true

module Knock
  module Resources
    class Users
      # @return [Knock::Resources::Users::Feeds]
      attr_reader :feeds

      # @return [Knock::Resources::Users::Bulk]
      attr_reader :bulk

      # Identify user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Time, nil] :created_at
      #
      #   @option params [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::User]
      #
      def update(user_id, params = {})
        parsed, options = Knock::Models::UserUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%0s", user_id],
          body: parsed,
          model: Knock::Models::User,
          options: options
        )
      end

      # List users
      #
      # @param params [Knock::Models::UserListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::User>]
      #
      def list(params = {})
        parsed, options = Knock::Models::UserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/users",
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::User,
          options: options
        )
      end

      # Delete user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def delete(user_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/users/%0s", user_id],
          model: String,
          options: params[:request_options]
        )
      end

      # Get user
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::User]
      #
      def get(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%0s", user_id],
          model: Knock::Models::User,
          options: params[:request_options]
        )
      end

      # Get channel data
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knock::Models::UserGetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :user_id The user ID
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::ChannelData]
      #
      def get_channel_data(channel_id, params)
        parsed, options = Knock::Models::UserGetChannelDataParams.dump_request(params)
        user_id = parsed.delete(:user_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["v1/users/%0s/channel_data/%1s", user_id, channel_id],
          model: Knock::Models::ChannelData,
          options: options
        )
      end

      # Get preference set
      #
      # @param id [String] Path param: Preference set ID
      #
      # @param params [Knock::Models::UserGetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :user_id Path param: User ID
      #
      #   @option params [String] :tenant Query param: Tenant ID
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::PreferenceSet]
      #
      def get_preferences(id, params)
        parsed, options = Knock::Models::UserGetPreferencesParams.dump_request(params)
        user_id = parsed.delete(:user_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["v1/users/%0s/preferences/%1s", user_id, id],
          query: parsed,
          model: Knock::Models::PreferenceSet,
          options: options
        )
      end

      # List messages
      #
      # @param user_id [String] The user ID
      #
      # @param params [Knock::Models::UserListMessagesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [String] :channel_id The channel ID
      #
      #   @option params [Array<Symbol, Knock::Models::UserListMessagesParams::EngagementStatus>] :engagement_status The engagement status of the message
      #
      #   @option params [Array<String>] :message_ids The message IDs to filter messages by
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :source The source of the message (workflow key)
      #
      #   @option params [Array<Symbol, Knock::Models::UserListMessagesParams::Status>] :status The status of the message
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
      # @return [Knock::EntriesCursor<Knock::Models::UserListMessagesResponse>]
      #
      def list_messages(user_id, params = {})
        parsed, options = Knock::Models::UserListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%0s/messages", user_id],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::UserListMessagesResponse,
          options: options
        )
      end

      # List preference sets
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserListPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knock::Models::PreferenceSet>]
      #
      def list_preferences(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%0s/preferences", user_id],
          model: Knock::ArrayOf[Knock::Models::PreferenceSet],
          options: params[:request_options]
        )
      end

      # List schedules
      #
      # @param user_id [String] The ID of the user to list schedules for
      #
      # @param params [Knock::Models::UserListSchedulesParams, Hash{Symbol=>Object}] .
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
      def list_schedules(user_id, params = {})
        parsed, options = Knock::Models::UserListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%0s/schedules", user_id],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Schedule,
          options: options
        )
      end

      # List subscriptions
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserListSubscriptionsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Subscription>]
      #
      def list_subscriptions(user_id, params = {})
        parsed, options = Knock::Models::UserListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%0s/subscriptions", user_id],
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Subscription,
          options: options
        )
      end

      # Merge two users together, where the user specified with the `from_user_id` param
      #   will be merged into the user specified by `user_id`.
      #
      # @param user_id [String] User ID
      #
      # @param params [Knock::Models::UserMergeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :from_user_id The user ID to merge from
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::User]
      #
      def merge(user_id, params)
        parsed, options = Knock::Models::UserMergeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%0s/merge", user_id],
          body: parsed,
          model: Knock::Models::User,
          options: options
        )
      end

      # Set channel data
      #
      # @param channel_id [String] Path param: The channel ID
      #
      # @param params [Knock::Models::UserSetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :user_id Path param: The user ID
      #
      #   @option params [Knock::Models::PushChannelData, Knock::Models::OneSignalChannelData, Knock::Models::SlackChannelData, Knock::Models::MsTeamsChannelData, Knock::Models::DiscordChannelData] :data Body param: Channel data for push providers
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::ChannelData]
      #
      def set_channel_data(channel_id, params)
        parsed, options = Knock::Models::UserSetChannelDataParams.dump_request(params)
        user_id = parsed.delete(:user_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :put,
          path: ["v1/users/%0s/channel_data/%1s", user_id, channel_id],
          body: parsed,
          model: Knock::Models::ChannelData,
          options: options
        )
      end

      # Updates a complete preference set for a user. This is a destructive operation
      #   that will replace the existing preference set for the user.
      #
      # @param id [String] Path param: Preference set ID
      #
      # @param params [Knock::Models::UserSetPreferencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :user_id Path param: User ID
      #
      #   @option params [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] :categories Body param: A setting for a preference set, where the key in the object is the
      #     category, and the values are the preference settings for that category.
      #
      #   @option params [Knock::Models::PreferenceSetChannelTypes, nil] :channel_types Body param: Channel type preferences
      #
      #   @option params [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] :workflows Body param: A setting for a preference set, where the key in the object is the
      #     workflow key, and the values are the preference settings for that workflow.
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::PreferenceSet]
      #
      def set_preferences(id, params)
        parsed, options = Knock::Models::UserSetPreferencesParams.dump_request(params)
        user_id = parsed.delete(:user_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :put,
          path: ["v1/users/%0s/preferences/%1s", user_id, id],
          body: parsed,
          model: Knock::Models::PreferenceSet,
          options: options
        )
      end

      # Unset channel data
      #
      # @param channel_id [String] The channel ID
      #
      # @param params [Knock::Models::UserUnsetChannelDataParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :user_id The user ID
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def unset_channel_data(channel_id, params)
        parsed, options = Knock::Models::UserUnsetChannelDataParams.dump_request(params)
        user_id = parsed.delete(:user_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :delete,
          path: ["v1/users/%0s/channel_data/%1s", user_id, channel_id],
          model: String,
          options: options
        )
      end

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
        @feeds = Knock::Resources::Users::Feeds.new(client: client)
        @bulk = Knock::Resources::Users::Bulk.new(client: client)
      end
    end
  end
end
