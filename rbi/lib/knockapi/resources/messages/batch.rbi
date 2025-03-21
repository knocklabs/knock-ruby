# typed: strong

module Knockapi
  module Resources
    class Messages
      class Batch
        # Mark messages as archived
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def archive(
          # The message IDs to update
          message_ids:,
          request_options: {}
        )
        end

        # Get the contents of multiple messages in a single request.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Messages::BatchGetContentResponseItem])
        end
        def get_content(
          # The IDs of the messages to fetch contents of
          message_ids:,
          request_options: {}
        )
        end

        # Mark messages as interacted
        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_interacted(
          # The message IDs to update
          message_ids:,
          # Metadata about the interaction
          metadata: nil,
          request_options: {}
        )
        end

        # Mark messages as read
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_read(
          # The message IDs to update
          message_ids:,
          request_options: {}
        )
        end

        # Mark messages as seen
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_seen(
          # The message IDs to update
          message_ids:,
          request_options: {}
        )
        end

        # Mark messages as unread
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unread(
          # The message IDs to update
          message_ids:,
          request_options: {}
        )
        end

        # Mark messages as unseen
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unseen(
          # The message IDs to update
          message_ids:,
          request_options: {}
        )
        end

        # Mark messages as unarchived
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def unarchive(
          # The message IDs to update
          message_ids:,
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
