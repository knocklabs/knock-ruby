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
      # @overload update(user_id, channel_data: nil, created_at: nil, preferences: nil, request_options: {})
      #
      # @param user_id [String]
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      # @param created_at [Time, nil]
      # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::User>]
      #
      # @see Knockapi::Models::UserListParams
      def list(params = {})
        parsed, options = Knockapi::Models::UserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/users",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::User,
          options: options
        )
      end

      # Delete user
      #
      # @overload delete(user_id, request_options: {})
      #
      # @param user_id [String]
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

      # Get user
      #
      # @overload get(user_id, request_options: {})
      #
      # @param user_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload get_channel_data(user_id, channel_id, request_options: {})
      #
      # @param user_id [String]
      # @param channel_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload get_preferences(user_id, preference_set_id, tenant: nil, request_options: {})
      #
      # @param user_id [String]
      # @param preference_set_id [String]
      # @param tenant [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list_messages(user_id, after: nil, before: nil, channel_id: nil, engagement_status: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param user_id [String]
      # @param after [String]
      # @param before [String]
      # @param channel_id [String]
      # @param engagement_status [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>]
      # @param message_ids [Array<String>]
      # @param page_size [Integer]
      # @param source [String]
      # @param status [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>]
      # @param tenant [String]
      # @param trigger_data [String]
      # @param workflow_categories [Array<String>]
      # @param workflow_recipient_run_id [String]
      # @param workflow_run_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::UserListMessagesParams
      def list_messages(user_id, params = {})
        parsed, options = Knockapi::Models::UserListMessagesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/messages", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # List preference sets
      #
      # @overload list_preferences(user_id, request_options: {})
      #
      # @param user_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list_schedules(user_id, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param user_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param tenant [String]
      # @param workflow [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::UserListSchedulesParams
      def list_schedules(user_id, params = {})
        parsed, options = Knockapi::Models::UserListSchedulesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/schedules", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # List subscriptions
      #
      # @overload list_subscriptions(user_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param user_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Recipients::Subscription>]
      #
      # @see Knockapi::Models::UserListSubscriptionsParams
      def list_subscriptions(user_id, params = {})
        parsed, options = Knockapi::Models::UserListSubscriptionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/users/%1$s/subscriptions", user_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Recipients::Subscription,
          options: options
        )
      end

      # Merge two users together, where the user specified with the `from_user_id` param
      #   will be merged into the user specified by `user_id`.
      #
      # @overload merge(user_id, from_user_id:, request_options: {})
      #
      # @param user_id [String]
      # @param from_user_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload set_channel_data(user_id, channel_id, data:, request_options: {})
      #
      # @param user_id [String]
      # @param channel_id [String]
      # @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload set_preferences(user_id, preference_set_id, categories: nil, channel_types: nil, workflows: nil, request_options: {})
      #
      # @param user_id [String]
      # @param preference_set_id [String]
      # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
      # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload unset_channel_data(user_id, channel_id, request_options: {})
      #
      # @param user_id [String]
      # @param channel_id [String]
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
        @bulk = Knockapi::Resources::Users::Bulk.new(client: client)
      end
    end
  end
end
