# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Bulk delete objects
        #
        # @overload delete(collection, object_ids:, request_options: {})
        #
        # @param collection [String]
        # @param object_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Objects::BulkDeleteParams
        def delete(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%1$s/bulk/delete", collection],
            query: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Add subscriptions for a set of objects in a single collection. If a subscription
        # already exists, it will be updated.
        #
        # @overload add_subscriptions(collection, subscriptions:, request_options: {})
        #
        # @param collection [String]
        # @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Objects::BulkAddSubscriptionsParams
        def add_subscriptions(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkAddSubscriptionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%1$s/bulk/subscriptions/add", collection],
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set objects
        #
        # @overload set(collection, objects:, request_options: {})
        #
        # @param collection [String]
        # @param objects [Array<Knockapi::Models::InlineObjectRequest>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Objects::BulkSetParams
        def set(collection, params)
          parsed, options = Knockapi::Models::Objects::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/objects/%1$s/bulk/set", collection],
            body: parsed,
            model: Knockapi::Models::BulkOperation,
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
