# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Bulk deletes objects from the specified collection.
        #
        # @overload delete(collection, body:, request_options: {})
        #
        # @param collection [String] The collection this object belongs to.
        #
        # @param body [Object]
        #
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
            body: parsed[:body],
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Add subscriptions for all objects in a single collection. If a subscription for
        # an object in the collection already exists, it will be updated. This endpoint
        # also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `recipient` field.
        #
        # @overload add_subscriptions(collection, subscriptions:, request_options: {})
        #
        # @param collection [String] The collection this object belongs to.
        #
        # @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>] A list of subscriptions.
        #
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

        # Bulk sets up to 1,000 objects at a time in the specified collection.
        #
        # @overload set(collection, objects:, request_options: {})
        #
        # @param collection [String] The collection this object belongs to.
        #
        # @param objects [Array<Knockapi::Models::InlineObjectRequest>] A list of objects.
        #
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
