# typed: strong

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel. The channel is specified by the
        # `channel_id` parameter. The action to perform is specified by the `action`
        # parameter, where the action is a status change action (e.g. `archive`,
        # `unarchive`).
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
            recipient_gids: T::Array[String],
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
          # The action to perform on the messages.
          action,
          # The archived status to filter messages by.
          archived: nil,
          # The delivery status to filter messages by.
          delivery_status: nil,
          # The engagement status to filter messages by.
          engagement_status: nil,
          # Whether to include only messages that have a tenant or not.
          has_tenant: nil,
          # The timestamp to filter messages by. Only include messages created after this
          # timestamp.
          newer_than: nil,
          # The timestamp to filter messages by. Only include messages created before this
          # timestamp.
          older_than: nil,
          # The recipient GIDs to filter messages by.
          recipient_gids: nil,
          # The recipient IDs to filter messages by.
          recipient_ids: nil,
          # The tenant IDs to filter messages by.
          tenants: nil,
          # The trigger data to filter messages by. Must be a valid JSON object.
          trigger_data: nil,
          # The workflow keys to filter messages by.
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
