# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk delete users
        #
        # @param params [Knockapi::Models::Users::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :user_ids
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        def delete(params)
          parsed, options = Knockapi::Models::Users::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/delete",
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk identifies users
        #
        # @param params [Knockapi::Models::Users::BulkIdentifyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knockapi::Models::InlineIdentifyUserRequest>] :users
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        def identify(params)
          parsed, options = Knockapi::Models::Users::BulkIdentifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/identify",
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set preferences
        #
        # @param params [Knockapi::Models::Users::BulkSetPreferencesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Knockapi::Models::Recipients::PreferenceSetRequest] :preferences Set preferences for a recipient
        #
        #   @option params [Array<String>] :user_ids
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        def set_preferences(params)
          parsed, options = Knockapi::Models::Users::BulkSetPreferencesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/preferences",
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
