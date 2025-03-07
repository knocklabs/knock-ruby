# frozen_string_literal: true

module Knock
  module Resources
    class Objects
      class Bulk
        # Bulk delete objects
        #
        # @param collection [String] The collection to delete objects from
        #
        # @param params [Knock::Models::Objects::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :object_ids The IDs of the objects to delete
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Objects::BulkDeleteResponse]
        #
        def delete(collection, params)
          parsed, options = Knock::Models::Objects::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/delete", collection],
            query: parsed,
            model: Knock::Models::Objects::BulkDeleteResponse,
            options: options
          )
        end

        # Add subscriptions for a set of objects in a single collection. If a subscription
        #   already exists, it will be updated.
        #
        # @param collection [String] The collection to add subscriptions for
        #
        # @param params [Knock::Models::Objects::BulkAddSubscriptionsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription>] :subscriptions
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Objects::BulkAddSubscriptionsResponse]
        #
        def add_subscriptions(collection, params)
          parsed, options = Knock::Models::Objects::BulkAddSubscriptionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/subscriptions/add", collection],
            body: parsed,
            model: Knock::Models::Objects::BulkAddSubscriptionsResponse,
            options: options
          )
        end

        # Bulk set objects
        #
        # @param collection [String] The collection to set objects in
        #
        # @param params [Knock::Models::Objects::BulkSetParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knock::Models::InlineObjectRequest>] :objects
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Objects::BulkSetResponse]
        #
        def set(collection, params)
          parsed, options = Knock::Models::Objects::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/set", collection],
            body: parsed,
            model: Knock::Models::Objects::BulkSetResponse,
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
