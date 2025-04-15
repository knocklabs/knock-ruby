# frozen_string_literal: true

module Knockapi
  module Resources
    class Objects
      class Bulk
        # Deletes objects in bulk for a given collection
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

        # Bulk upserts subscriptions for a set of objects in a single collection
        #
        # @overload add_subscriptions(collection, request_options: {})
        #
        # @param collection [String]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Objects::BulkAddSubscriptionsParams
        def add_subscriptions(collection, params = {})
          @client.request(
            method: :post,
            path: ["v1/objects/%1$s/bulk/subscriptions/add", collection],
            model: Knockapi::Models::BulkOperation,
            options: params[:request_options]
          )
        end

        # Sets objects in bulk for a given collection
        #
        # @overload set(collection, request_options: {})
        #
        # @param collection [String]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Objects::BulkSetParams
        def set(collection, params = {})
          @client.request(
            method: :post,
            path: ["v1/objects/%1$s/bulk/set", collection],
            model: Knockapi::Models::BulkOperation,
            options: params[:request_options]
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
