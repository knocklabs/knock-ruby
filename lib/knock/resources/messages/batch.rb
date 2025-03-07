# frozen_string_literal: true

module Knock
  module Resources
    class Messages
      class Batch
        # Mark messages as archived
        #
        # @param params [Knock::Models::Messages::BatchArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchArchiveResponseItem>]
        #
        def archive(params)
          parsed, options = Knock::Models::Messages::BatchArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/archived",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchArchiveResponseItem],
            options: options
          )
        end

        # Get the contents of multiple messages in a single request.
        #
        # @param params [Knock::Models::Messages::BatchGetContentParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The IDs of the messages to fetch contents of
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchGetContentResponseItem>]
        #
        def get_content(params)
          parsed, options = Knock::Models::Messages::BatchGetContentParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/messages/batch/content",
            query: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchGetContentResponseItem],
            options: options
          )
        end

        # Mark messages as interacted
        #
        # @param params [Knock::Models::Messages::BatchMarkAsInteractedParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Hash{Symbol=>Object}, nil] :metadata Metadata about the interaction
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchMarkAsInteractedResponseItem>]
        #
        def mark_as_interacted(params)
          parsed, options = Knock::Models::Messages::BatchMarkAsInteractedParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/interacted",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchMarkAsInteractedResponseItem],
            options: options
          )
        end

        # Mark messages as read
        #
        # @param params [Knock::Models::Messages::BatchMarkAsReadParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchMarkAsReadResponseItem>]
        #
        def mark_as_read(params)
          parsed, options = Knock::Models::Messages::BatchMarkAsReadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/read",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchMarkAsReadResponseItem],
            options: options
          )
        end

        # Mark messages as seen
        #
        # @param params [Knock::Models::Messages::BatchMarkAsSeenParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchMarkAsSeenResponseItem>]
        #
        def mark_as_seen(params)
          parsed, options = Knock::Models::Messages::BatchMarkAsSeenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/seen",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchMarkAsSeenResponseItem],
            options: options
          )
        end

        # Mark messages as unread
        #
        # @param params [Knock::Models::Messages::BatchMarkAsUnreadParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchMarkAsUnreadResponseItem>]
        #
        def mark_as_unread(params)
          parsed, options = Knock::Models::Messages::BatchMarkAsUnreadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unread",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchMarkAsUnreadResponseItem],
            options: options
          )
        end

        # Mark messages as unseen
        #
        # @param params [Knock::Models::Messages::BatchMarkAsUnseenParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchMarkAsUnseenResponseItem>]
        #
        def mark_as_unseen(params)
          parsed, options = Knock::Models::Messages::BatchMarkAsUnseenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unseen",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchMarkAsUnseenResponseItem],
            options: options
          )
        end

        # Mark messages as unarchived
        #
        # @param params [Knock::Models::Messages::BatchUnarchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knock::Models::Messages::BatchUnarchiveResponseItem>]
        #
        def unarchive(params)
          parsed, options = Knock::Models::Messages::BatchUnarchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unarchived",
            body: parsed,
            model: Knock::ArrayOf[Knock::Models::Messages::BatchUnarchiveResponseItem],
            options: options
          )
        end

        # @param client [Knock::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
