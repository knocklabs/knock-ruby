# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Guides
        # Returns a list of eligible in-app guides for a specific user and channel.
        #
        # @overload get_channel(user_id, channel_id, data: nil, tenant: nil, type: nil, request_options: {})
        #
        # @param user_id [String] The ID for the user that you set when identifying them in Knock.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param data [String] The data (JSON encoded object) to use for targeting and rendering guides.
        #
        # @param tenant [String] The tenant ID to use for targeting and rendering guides.
        #
        # @param type [String] The type of guides to filter by.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideGetChannelResponse]
        #
        # @see Knockapi::Models::Users::GuideGetChannelParams
        def get_channel(user_id, channel_id, params = {})
          parsed, options = Knockapi::Models::Users::GuideGetChannelParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/guides/%2$s", user_id, channel_id],
            query: parsed,
            model: Knockapi::Models::Users::GuideGetChannelResponse,
            options: options
          )
        end

        # Records that a guide has been archived by a user, triggering any associated
        # archived events.
        #
        # @overload mark_message_as_archived(user_id, message_id, channel_id:, guide_id:, guide_key:, guide_step_ref:, content: nil, data: nil, is_final: nil, metadata: nil, tenant: nil, request_options: {})
        #
        # @param user_id [String] The ID for the user that you set when identifying them in Knock.
        #
        # @param message_id [String] The unique identifier for the message.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        # @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        # @param is_final [Boolean] Whether the guide is final.
        #
        # @param metadata [Hash{Symbol=>Object}] The metadata of the guide.
        #
        # @param tenant [String, nil] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideMarkMessageAsArchivedResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsArchivedParams
        def mark_message_as_archived(user_id, message_id, params)
          parsed, options = Knockapi::Models::Users::GuideMarkMessageAsArchivedParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/%2$s/archived", user_id, message_id],
            body: parsed,
            model: Knockapi::Models::Users::GuideMarkMessageAsArchivedResponse,
            options: options
          )
        end

        # Records that a user has interacted with a guide, triggering any associated
        # interacted events.
        #
        # @overload mark_message_as_interacted(user_id, message_id, channel_id:, guide_id:, guide_key:, guide_step_ref:, content: nil, data: nil, is_final: nil, metadata: nil, tenant: nil, request_options: {})
        #
        # @param user_id [String] The ID for the user that you set when identifying them in Knock.
        #
        # @param message_id [String] The unique identifier for the message.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        # @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        # @param is_final [Boolean] Whether the guide is final.
        #
        # @param metadata [Hash{Symbol=>Object}] The metadata of the guide.
        #
        # @param tenant [String, nil] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideMarkMessageAsInteractedResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsInteractedParams
        def mark_message_as_interacted(user_id, message_id, params)
          parsed, options = Knockapi::Models::Users::GuideMarkMessageAsInteractedParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/%2$s/interacted", user_id, message_id],
            body: parsed,
            model: Knockapi::Models::Users::GuideMarkMessageAsInteractedResponse,
            options: options
          )
        end

        # Records that a guide has been seen by a user, triggering any associated seen
        # events.
        #
        # @overload mark_message_as_seen(user_id, message_id, channel_id:, guide_id:, guide_key:, guide_step_ref:, content: nil, data: nil, is_final: nil, metadata: nil, tenant: nil, request_options: {})
        #
        # @param user_id [String] The ID for the user that you set when identifying them in Knock.
        #
        # @param message_id [String] The unique identifier for the message.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        # @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        # @param is_final [Boolean] Whether the guide is final.
        #
        # @param metadata [Hash{Symbol=>Object}] The metadata of the guide.
        #
        # @param tenant [String, nil] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideMarkMessageAsSeenResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsSeenParams
        def mark_message_as_seen(user_id, message_id, params)
          parsed, options = Knockapi::Models::Users::GuideMarkMessageAsSeenParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/%2$s/seen", user_id, message_id],
            body: parsed,
            model: Knockapi::Models::Users::GuideMarkMessageAsSeenResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
