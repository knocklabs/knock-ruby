# typed: strong

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update the status of messages for a specific channel. The channel is
        # specified by the `channel_id` parameter. The action to perform is specified by
        # the `action` parameter, where the action is a status change action (e.g.
        # `archive`, `unarchive`).
        sig do
          params(
            channel_id: String,
            action: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol,
            archived: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol,
            delivery_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol,
            engagement_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol,
            has_tenant: T::Boolean,
            newer_than: Time,
            older_than: Time,
            recipient_ids: T::Array[String],
            tenants: T::Array[String],
            trigger_data: String,
            workflows: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def update_message_status(
          # The ID of the channel to update messages for.
          channel_id,
          # The target status to be applied to the messages.
          action,
          # Limits the results to messages with the given archived status.
          archived: nil,
          # Limits the results to messages with the given delivery status.
          delivery_status: nil,
          # Limits the results to messages with the given engagement status.
          engagement_status: nil,
          # Limits the results to messages that have a tenant or not.
          has_tenant: nil,
          # Limits the results to messages inserted after the given date.
          newer_than: nil,
          # Limits the results to messages inserted before the given date.
          older_than: nil,
          # Limits the results to messages with the given recipient IDs.
          recipient_ids: nil,
          # Limits the results to messages with the given tenant IDs.
          tenants: nil,
          # Limits the results to only messages that were generated with the given data. See
          # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
          # more information.
          trigger_data: nil,
          # Limits the results to messages with the given workflow keys.
          workflows: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
