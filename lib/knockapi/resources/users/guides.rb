# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      # A user is an individual from your system, represented in Knock. They are most
      # commonly a recipient of a notification.
      class Guides
        # Returns a list of eligible in-app guides for a specific user and channel.
        #
        # @overload get_channel(user_id, channel_id, data: nil, tenant: nil, type: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
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
          parsed, options = Knockapi::Users::GuideGetChannelParams.dump_request(params)
          query = Knockapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/guides/%2$s", user_id, channel_id],
            query: query,
            model: Knockapi::Models::Users::GuideGetChannelResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Knockapi::Models::Users::GuideMarkMessageAsArchivedParams} for more details.
        #
        # Records that a guide has been archived by a user, triggering any associated
        # archived events.
        #
        # @overload mark_message_as_archived(user_id, channel_id:, guide_id:, guide_key:, guide_step_ref:, is_final: nil, tenant: nil, unthrottled: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param is_final [Boolean] Whether the guide is final.
        #
        # @param tenant [String] The tenant ID of the guide.
        #
        # @param unthrottled [Boolean] Whether the guide bypasses its guide group's throttle settings. When true, archi
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideActionResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsArchivedParams
        def mark_message_as_archived(user_id, params)
          parsed, options = Knockapi::Users::GuideMarkMessageAsArchivedParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/archived", user_id],
            body: parsed,
            model: Knockapi::Users::GuideActionResponse,
            options: options
          )
        end

        # Records that a user has interacted with a guide, triggering any associated
        # interacted events.
        #
        # @overload mark_message_as_interacted(user_id, channel_id:, guide_id:, guide_key:, guide_step_ref:, metadata: nil, tenant: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param metadata [Hash{Symbol=>Object}] Metadata about the interaction.
        #
        # @param tenant [String] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideActionResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsInteractedParams
        def mark_message_as_interacted(user_id, params)
          parsed, options = Knockapi::Users::GuideMarkMessageAsInteractedParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/interacted", user_id],
            body: parsed,
            model: Knockapi::Users::GuideActionResponse,
            options: options
          )
        end

        # Records that a guide has been seen by a user, triggering any associated seen
        # events.
        #
        # @overload mark_message_as_seen(user_id, channel_id:, content:, guide_id:, guide_key:, guide_step_ref:, data: nil, tenant: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param channel_id [String] The unique identifier for the channel.
        #
        # @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        # @param guide_id [String] The unique identifier for the guide.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param guide_step_ref [String] The step reference of the guide.
        #
        # @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        # @param tenant [String] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideActionResponse]
        #
        # @see Knockapi::Models::Users::GuideMarkMessageAsSeenParams
        def mark_message_as_seen(user_id, params)
          parsed, options = Knockapi::Users::GuideMarkMessageAsSeenParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/messages/seen", user_id],
            body: parsed,
            model: Knockapi::Users::GuideActionResponse,
            options: options
          )
        end

        # Resets the engagement state of a guide for a user, removing the guide's
        # engagement log entry so the next interaction creates a fresh engagement.
        #
        # @overload reset_guide_engagements(user_id, guide_key:, tenant: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param tenant [String] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideActionResponse]
        #
        # @see Knockapi::Models::Users::GuideResetGuideEngagementsParams
        def reset_guide_engagements(user_id, params)
          parsed, options = Knockapi::Users::GuideResetGuideEngagementsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/users/%1$s/guides/engagements/reset", user_id],
            body: parsed,
            model: Knockapi::Users::GuideActionResponse,
            options: options
          )
        end

        # Records that a guide has been unarchived, triggering any associated unarchived
        # events.
        #
        # @overload unarchive_guide_message(user_id, guide_key:, tenant: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param guide_key [String] The key of the guide.
        #
        # @param tenant [String] The tenant ID of the guide.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::GuideActionResponse]
        #
        # @see Knockapi::Models::Users::GuideUnarchiveGuideMessageParams
        def unarchive_guide_message(user_id, params)
          parsed, options = Knockapi::Users::GuideUnarchiveGuideMessageParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["v1/users/%1$s/guides/messages/archived", user_id],
            body: parsed,
            model: Knockapi::Users::GuideActionResponse,
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
