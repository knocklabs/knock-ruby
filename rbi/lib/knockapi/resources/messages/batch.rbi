# typed: strong

module Knockapi
  module Resources
    class Messages
      class Batch
        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchArchiveResponse)
        end
        def archive(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchGetContentResponse)
        end
        def get_content(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchMarkAsInteractedResponse)
        end
        def mark_as_interacted(message_ids:, metadata: nil, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchMarkAsReadResponse)
        end
        def mark_as_read(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchMarkAsSeenResponse)
        end
        def mark_as_seen(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchMarkAsUnreadResponse)
        end
        def mark_as_unread(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchMarkAsUnseenResponse)
        end
        def mark_as_unseen(message_ids:, request_options: {})
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Messages::BatchUnarchiveResponse)
        end
        def unarchive(message_ids:, request_options: {})
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
