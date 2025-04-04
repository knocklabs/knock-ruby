# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      class Batch
        # Mark messages as archived
        #
        # @overload archive(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchArchiveParams
        def archive(params)
          parsed, options = Knockapi::Models::Messages::BatchArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/archived",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Get the contents of multiple messages in a single request.
        #
        # @overload get_content(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Messages::BatchGetContentResponseItem>]
        #
        # @see Knockapi::Models::Messages::BatchGetContentParams
        def get_content(params)
          parsed, options = Knockapi::Models::Messages::BatchGetContentParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/messages/batch/content",
            query: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem],
            options: options
          )
        end

        # Mark messages as interacted
        #
        # @overload mark_as_interacted(message_ids:, metadata: nil, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param metadata [Hash{Symbol=>Object}, nil]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchMarkAsInteractedParams
        def mark_as_interacted(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsInteractedParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/interacted",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as read
        #
        # @overload mark_as_read(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchMarkAsReadParams
        def mark_as_read(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsReadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/read",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as seen
        #
        # @overload mark_as_seen(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchMarkAsSeenParams
        def mark_as_seen(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsSeenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/seen",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unread
        #
        # @overload mark_as_unread(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchMarkAsUnreadParams
        def mark_as_unread(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsUnreadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unread",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unseen
        #
        # @overload mark_as_unseen(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchMarkAsUnseenParams
        def mark_as_unseen(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsUnseenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unseen",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unarchived
        #
        # @overload unarchive(message_ids:, request_options: {})
        #
        # @param message_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        # @see Knockapi::Models::Messages::BatchUnarchiveParams
        def unarchive(params)
          parsed, options = Knockapi::Models::Messages::BatchUnarchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unarchived",
            body: parsed,
            model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message],
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
