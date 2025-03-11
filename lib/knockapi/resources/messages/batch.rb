# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      class Batch
        # Mark messages as archived
        #
        # @param params [Knockapi::Models::Messages::BatchArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def archive(params)
          parsed, options = Knockapi::Models::Messages::BatchArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/archived",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Get the contents of multiple messages in a single request.
        #
        # @param params [Knockapi::Models::Messages::BatchGetContentParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The IDs of the messages to fetch contents of
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Messages::BatchGetContentResponseItem>]
        #
        def get_content(params)
          parsed, options = Knockapi::Models::Messages::BatchGetContentParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/messages/batch/content",
            query: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem],
            options: options
          )
        end

        # Mark messages as interacted
        #
        # @param params [Knockapi::Models::Messages::BatchMarkAsInteractedParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Hash{Symbol=>Object}, nil] :metadata Metadata about the interaction
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def mark_as_interacted(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsInteractedParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/interacted",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as read
        #
        # @param params [Knockapi::Models::Messages::BatchMarkAsReadParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def mark_as_read(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsReadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/read",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as seen
        #
        # @param params [Knockapi::Models::Messages::BatchMarkAsSeenParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def mark_as_seen(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsSeenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/seen",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unread
        #
        # @param params [Knockapi::Models::Messages::BatchMarkAsUnreadParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def mark_as_unread(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsUnreadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unread",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unseen
        #
        # @param params [Knockapi::Models::Messages::BatchMarkAsUnseenParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def mark_as_unseen(params)
          parsed, options = Knockapi::Models::Messages::BatchMarkAsUnseenParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unseen",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # Mark messages as unarchived
        #
        # @param params [Knockapi::Models::Messages::BatchUnarchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :message_ids The message IDs to update
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Knockapi::Models::Message>]
        #
        def unarchive(params)
          parsed, options = Knockapi::Models::Messages::BatchUnarchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/messages/batch/unarchived",
            body: parsed,
            model: Knockapi::ArrayOf[Knockapi::Models::Message],
            options: options
          )
        end

        # @param client [Knockapi::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
