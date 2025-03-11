# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Bulk delete objects
        #
        # @param collection [String] The collection to delete objects from
        #
        # @param params [Knockapi::Models::Objects::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :object_ids The IDs of the objects to delete
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        def delete(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/delete", collection],
            query: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Add subscriptions for a set of objects in a single collection. If a subscription
        #   already exists, it will be updated.
        #
        # @param collection [String] The collection to add subscriptions for
        #
        # @param params [Knockapi::Models::Objects::BulkAddSubscriptionsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>] :subscriptions
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        def add_subscriptions(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkAddSubscriptionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/subscriptions/add", collection],
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set objects
        #
        # @param collection [String] The collection to set objects in
        #
        # @param params [Knockapi::Models::Objects::BulkSetParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knockapi::Models::InlineObjectRequest>] :objects
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        def set(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%0s/bulk/set", collection],
            body: parsed,
            model: Knockapi::Models::BulkOperation,
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
