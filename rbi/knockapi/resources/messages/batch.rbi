# typed: strong

module Knockapi
  module Resources
    class Messages
      class Batch
        # Marks the given messages as archived. Archived messages are hidden from the
        # default message list in the feed but can still be accessed and unarchived later.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def archive(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # Get the contents of multiple messages in a single request.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(
            T::Array[Knockapi::Models::Messages::BatchGetContentResponseItem]
          )
        end
        def get_content(
          # The IDs of the messages to fetch contents of.
          message_ids:,
          request_options: {}
        )
        end

        # Marks the given messages as interacted with by the user. This can include any
        # user action on the message, with optional metadata about the specific
        # interaction. Cannot include more than 5 key-value pairs, must not contain nested
        # data. Read more about message engagement statuses
        # [here](/send-notifications/message-statuses#engagement-status).
        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_interacted(
          # The message IDs to batch mark as interacted with.
          message_ids:,
          # Metadata about the interaction.
          metadata: nil,
          request_options: {}
        )
        end

        # Marks the given messages as `read`. Read more about message engagement statuses
        # [here](/send-notifications/message-statuses#engagement-status).
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_read(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # Marks the given messages as `seen`. This indicates that the user has viewed the
        # message in their feed or inbox. Read more about message engagement statuses
        # [here](/send-notifications/message-statuses#engagement-status).
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_seen(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # Marks the given messages as `unread`. This reverses the `read` state. Read more
        # about message engagement statuses
        # [here](/send-notifications/message-statuses#engagement-status).
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unread(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # Marks the given messages as `unseen`. This reverses the `seen` state. Read more
        # about message engagement statuses
        # [here](/send-notifications/message-statuses#engagement-status).
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unseen(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # Marks the given messages as unarchived. This reverses the `archived` state.
        # Archived messages are hidden from the default message list in the feed but can
        # still be accessed and unarchived later.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T::Array[Knockapi::Models::Message])
        end
        def unarchive(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
