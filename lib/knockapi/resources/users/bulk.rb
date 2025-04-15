# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk deletes a list of users
        #
        # @overload delete(user_ids:, request_options: {})
        #
        # @param user_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkDeleteParams
        def delete(params)
          parsed, options = Knockapi::Models::Users::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/delete",
            query: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk identifies a list of users
        #
        # @overload identify(request_options: {})
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkIdentifyParams
        def identify(params = {})
          @client.request(
            method: :post,
            path: "v1/users/bulk/identify",
            model: Knockapi::Models::BulkOperation,
            options: params[:request_options]
          )
        end

        # Bulk sets user preferences
        #
        # @overload set_preferences(request_options: {})
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkSetPreferencesParams
        def set_preferences(params = {})
          @client.request(
            method: :post,
            path: "v1/users/bulk/preferences",
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
