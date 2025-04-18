# typed: strong

module Knockapi
  module Resources
    class Messages
      class Batch
        # Marks the given messages as archived.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def archive(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # Get the contents of multiple messages in a single request.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Messages::BatchGetContentResponseItem])
        end
        def get_content(
          # The IDs of the messages to fetch contents of.
          message_ids:,
          request_options: {}
        ); end
        # Marks the given messages as interacted with.
        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_interacted(
          # The message IDs to batch mark as interacted with.
          message_ids:,
          # Metadata about the interaction.
          metadata: nil,
          request_options: {}
        ); end
        # Marks the given messages as read.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_read(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # Marks the given messages as seen.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_seen(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # Marks the given messages as unread.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unread(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # Marks the given messages as unseen.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def mark_as_unseen(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # Marks the given messages as unarchived.
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(T::Array[Knockapi::Models::Message])
        end
        def unarchive(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
