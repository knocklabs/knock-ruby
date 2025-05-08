# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      # @return [Knockapi::Resources::Users::Feeds]
      attr_reader :feeds

      # @return [Knockapi::Resources::Users::Guides]
      attr_reader :guides

      # @return [Knockapi::Resources::Users::Bulk]
      attr_reader :bulk

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::UserUpdateParams} for more details.
      #
      # Create or update a user with the provided identification data. When you identify
      # an existing user, the system merges the properties you specific with what is
      # currently set on the user, updating only the fields included in your requests.
      #
      # @overload update(user_id, avatar: nil, channel_data: nil, created_at: nil, email: nil, locale: nil, name: nil, phone_number: nil, preferences: nil, timezone: nil, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param avatar [String, nil] URL to the user's avatar image.
      #
      # @param channel_data [Hash{Symbol=>Knockapi::Recipients::ChannelDataRequest}, nil] A request to set channel data for a type of channel inline.
      #
      # @param created_at [Time, nil] The creation date of the user from your system.
      #
      # @param email [String, nil] The primary email address for the user.
      #
      # @param locale [String, nil] The locale of the user. Used for [message localization](/concepts/translations).
      #
      # @param name [String, nil] Display name of the user.
      #
      # @param phone_number [String, nil] The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      #
      # @param preferences [Hash{Symbol=>Knockapi::Recipients::PreferenceSetRequest}, nil] Inline set preferences for a recipient, where the key is the preference set id.
      #
      # @param timezone [String, nil] The timezone of the user. Must be a valid [tz database time zone string](https:/
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::User]
      #
      # @see Knockapi::Models::UserUpdateParams
      def update(user_id, params = {})
        parsed, options = Knockapi::UserUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s", user_id],
          body: parsed,
          model: Knockapi::User,
          options: options
        )
      end

      # Retrieve a paginated list of users in the environment. Defaults to 50 users per
      # page.
      #
      # @overload list(after: nil, before: nil, include: nil, page_size: nil, request_options: {})
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param include [Array<Symbol, Knockapi::UserListParams::Include>] Associated resources to include in the response.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::User>]
      #
      # @see Knockapi::Models::UserListParams
      def list(params = {})
        parsed, options = Knockapi::UserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/users",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::User,
          options: options
        )
      end

      # Permanently delete a user and all associated data.
      #
      # @overload delete(user_id, request_options: {})
      #
      # @param user_id [String] The ID of the user to delete.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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

      # Retrieve a specific user by their ID.
      #
      # @overload get(user_id, request_options: {})
      #
      # @param user_id [String] The ID of the user to retrieve.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::User]
      #
      # @see Knockapi::Models::UserGetParams
      def get(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s", user_id],
          model: Knockapi::User,
          options: params[:request_options]
        )
      end

      # Retrieves the channel data for a specific user and channel ID.
      #
      # @overload get_channel_data(user_id, channel_id, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::UserGetChannelDataParams
      def get_channel_data(user_id, channel_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/channel_data/%2$s", user_id, channel_id],
          model: Knockapi::Recipients::RecipientsChannelData,
          options: params[:request_options]
        )
      end

      # Retrieves a specific preference set for a user identified by the preference set
      # ID.
      #
      # @overload get_preferences(user_id, id, tenant: nil, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param id [String] Unique identifier for the preference set.
      #
      # @param tenant [String] The unique identifier for the tenant.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::UserGetPreferencesParams
      def get_preferences(user_id, id, params = {})
        parsed, options = Knockapi::UserGetPreferencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/preferences/%2$s", user_id, id],
          query: parsed,
          model: Knockapi::Recipients::PreferenceSet,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::UserListMessagesParams} for more details.
      #
      # Returns a paginated list of messages for a specific user. Allows filtering by
      # message status and provides various sorting options. Messages outside the
      # account's retention window will not be included in the results.
      #
      # @overload list_messages(user_id, after: nil, before: nil, channel_id: nil, engagement_status: nil, inserted_at: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param user_id [String] The user ID to list messages for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param channel_id [String] Limits the results to items with the corresponding channel ID.
      #
      # @param engagement_status [Array<Symbol, Knockapi::UserListMessagesParams::EngagementStatus>] Limits the results to messages with the given engagement status.
      #
      # @param inserted_at [Knockapi::UserListMessagesParams::InsertedAt]
      #
      # @param message_ids [Array<String>] Limits the results to only the message IDs given (max 50). Note: when using this
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param source [String] Limits the results to messages triggered by the given workflow key.
      #
      # @param status [Array<Symbol, Knockapi::UserListMessagesParams::Status>] Limits the results to messages with the given delivery status.
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
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Message>]
      #
      # @see Knockapi::Models::UserListMessagesParams
      def list_messages(user_id, params = {})
        parsed, options = Knockapi::UserListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/messages", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Message,
          options: options
        )
      end

      # Retrieves a list of all preference sets for a specific user.
      #
      # @overload list_preferences(user_id, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Recipients::PreferenceSet>]
      #
      # @see Knockapi::Models::UserListPreferencesParams
      def list_preferences(user_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/preferences", user_id],
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet],
          options: params[:request_options]
        )
      end

      # Returns a paginated list of schedules for a specific user, in descending order.
      #
      # @overload list_schedules(user_id, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param user_id [String] The user ID to list schedules for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param tenant [String] The tenant ID to filter schedules for.
      #
      # @param workflow [String] The workflow key to filter schedules for.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Schedule>]
      #
      # @see Knockapi::Models::UserListSchedulesParams
      def list_schedules(user_id, params = {})
        parsed, options = Knockapi::UserListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/schedules", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Schedule,
          options: options
        )
      end

      # Retrieves a paginated list of subscriptions for a specific user, in descending
      # order.
      #
      # @overload list_subscriptions(user_id, after: nil, before: nil, include: nil, objects: nil, page_size: nil, request_options: {})
      #
      # @param user_id [String] The user ID to list subscriptions for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param include [Array<Symbol, Knockapi::UserListSubscriptionsParams::Include>] Associated resources to include in the response.
      #
      # @param objects [Array<String>] Only returns subscriptions for the specified object GIDs.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Recipients::Subscription>]
      #
      # @see Knockapi::Models::UserListSubscriptionsParams
      def list_subscriptions(user_id, params = {})
        parsed, options = Knockapi::UserListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/subscriptions", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Recipients::Subscription,
          options: options
        )
      end

      # Merge two users together, where the user specified with the `from_user_id` param
      # will be merged into the user specified by `user_id`.
      #
      # @overload merge(user_id, from_user_id:, request_options: {})
      #
      # @param user_id [String] The id of the user to merge into.
      #
      # @param from_user_id [String] The user ID to merge from.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::User]
      #
      # @see Knockapi::Models::UserMergeParams
      def merge(user_id, params)
        parsed, options = Knockapi::UserMergeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/users/%1$s/merge", user_id],
          body: parsed,
          model: Knockapi::User,
          options: options
        )
      end

      # Updates or creates channel data for a specific user and channel ID.
      #
      # @overload set_channel_data(user_id, channel_id, data:, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
      # @param data [Knockapi::Recipients::PushChannelData, Knockapi::Recipients::OneSignalChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData] Channel data for a given channel type.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Recipients::RecipientsChannelData]
      #
      # @see Knockapi::Models::UserSetChannelDataParams
      def set_channel_data(user_id, channel_id, params)
        parsed, options = Knockapi::UserSetChannelDataParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s/channel_data/%2$s", user_id, channel_id],
          body: parsed,
          model: Knockapi::Recipients::RecipientsChannelData,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::UserSetPreferencesParams} for more details.
      #
      # Updates a complete preference set for a user. This is a destructive operation
      # that will replace the existing preference set for the user.
      #
      # @overload set_preferences(user_id, id, categories: nil, channel_types: nil, workflows: nil, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param id [String] Unique identifier for the preference set.
      #
      # @param categories [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
      #
      # @param channel_types [Knockapi::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
      #
      # @param workflows [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Recipients::PreferenceSet]
      #
      # @see Knockapi::Models::UserSetPreferencesParams
      def set_preferences(user_id, id, params = {})
        parsed, options = Knockapi::UserSetPreferencesParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/users/%1$s/preferences/%2$s", user_id, id],
          body: parsed,
          model: Knockapi::Recipients::PreferenceSet,
          options: options
        )
      end

      # Deletes channel data for a specific user and channel ID.
      #
      # @overload unset_channel_data(user_id, channel_id, request_options: {})
      #
      # @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      # @param channel_id [String] The unique identifier for the channel.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
        @guides = Knockapi::Resources::Users::Guides.new(client: client)
        @bulk = Knockapi::Resources::Users::Bulk.new(client: client)
      end
    end
  end
end
