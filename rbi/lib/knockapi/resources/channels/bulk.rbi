# typed: strong

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel. The channel is specified by the
        #   `channel_id` parameter. The action to perform is specified by the `action`
        #   parameter, where the action is a status change action (e.g. `archive`,
        #   `unarchive`).
        sig do
          params(
            channel_id: String,
            action: Symbol,
            archived: Symbol,
            delivery_status: Symbol,
            engagement_status: Symbol,
            has_tenant: T::Boolean,
            newer_than: Time,
            older_than: Time,
            recipient_ids: T::Array[String],
            tenants: T::Array[String],
            trigger_data: String,
            workflows: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def update_message_status(
          channel_id,
          action,
          archived: nil,
          delivery_status: nil,
          engagement_status: nil,
          has_tenant: nil,
          newer_than: nil,
          older_than: nil,
          recipient_ids: nil,
          tenants: nil,
          trigger_data: nil,
          workflows: nil,
          request_options: {}
        )
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
