# typed: strong

module Knockapi
  module Resources
    class Users
      class Guides
        # Returns a list of eligible in-app guides for a specific user and channel.
        sig do
          params(
            user_id: String,
            channel_id: String,
            data: String,
            tenant: String,
            type: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Users::GuideGetChannelResponse)
        end
        def get_channel(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the channel.
          channel_id,
          # The data (JSON encoded object) to use for targeting and rendering guides.
          data: nil,
          # The tenant ID to use for targeting and rendering guides.
          tenant: nil,
          # The type of guides to filter by.
          type: nil,
          request_options: {}
        ); end
        # Records that a guide has been archived by a user, triggering any associated
        # archived events.
        sig do
          params(
            user_id: String,
            message_id: String,
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            content: T::Hash[Symbol, T.anything],
            data: T::Hash[Symbol, T.anything],
            is_final: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            tenant: T.nilable(String),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Users::GuideMarkMessageAsArchivedResponse)
        end
        def mark_message_as_archived(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the message.
          message_id,
          # The unique identifier for the channel.
          channel_id:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # The content of the guide.
          content: nil,
          # The data of the guide.
          data: nil,
          # Whether the guide is final.
          is_final: nil,
          # The metadata of the guide.
          metadata: nil,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        ); end
        # Records that a user has interacted with a guide, triggering any associated
        # interacted events.
        sig do
          params(
            user_id: String,
            message_id: String,
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            content: T::Hash[Symbol, T.anything],
            data: T::Hash[Symbol, T.anything],
            is_final: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            tenant: T.nilable(String),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Users::GuideMarkMessageAsInteractedResponse)
        end
        def mark_message_as_interacted(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the message.
          message_id,
          # The unique identifier for the channel.
          channel_id:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # The content of the guide.
          content: nil,
          # The data of the guide.
          data: nil,
          # Whether the guide is final.
          is_final: nil,
          # The metadata of the guide.
          metadata: nil,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        ); end
        # Records that a guide has been seen by a user, triggering any associated seen
        # events.
        sig do
          params(
            user_id: String,
            message_id: String,
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            content: T::Hash[Symbol, T.anything],
            data: T::Hash[Symbol, T.anything],
            is_final: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            tenant: T.nilable(String),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Users::GuideMarkMessageAsSeenResponse)
        end
        def mark_message_as_seen(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the message.
          message_id,
          # The unique identifier for the channel.
          channel_id:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # The content of the guide.
          content: nil,
          # The data of the guide.
          data: nil,
          # Whether the guide is final.
          is_final: nil,
          # The metadata of the guide.
          metadata: nil,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
