# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk delete users
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
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk identifies users
        #
        # @overload identify(users:, request_options: {})
        #
        # @param users [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkIdentifyParams
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
        # @overload set_preferences(preferences:, user_ids:, request_options: {})
        #
        # @param preferences [Knockapi::Models::Recipients::PreferenceSetRequest]
        # @param user_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkSetPreferencesParams
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
