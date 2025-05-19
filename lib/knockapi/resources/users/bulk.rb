# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Bulk
        # Deletes multiple users in a single operation. Accepts up to 100 user IDs to
        # delete and returns a bulk operation that can be queried for progress.
        #
        # @overload delete(user_ids:, request_options: {})
        #
        # @param user_ids [Array<String>] A list of user IDs.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkDeleteParams
        def delete(params)
          parsed, options = Knockapi::Users::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/delete",
            body: parsed,
            model: Knockapi::BulkOperation,
            options: options
          )
        end

        # Identifies multiple users in a single operation. Allows creating or updating up
        # to 100 users in a single batch with various properties, preferences, and channel
        # data.
        #
        # @overload identify(users:, request_options: {})
        #
        # @param users [Array<Knockapi::InlineIdentifyUserRequest>] A list of users.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkIdentifyParams
        def identify(params)
          parsed, options = Knockapi::Users::BulkIdentifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/identify",
            body: parsed,
            model: Knockapi::BulkOperation,
            options: options
          )
        end

        # Sets preferences for multiple users in a single operation. Supports either
        # setting the same preferences for multiple users or specific preferences for each
        # user.
        #
        # @overload set_preferences(preferences:, user_ids:, request_options: {})
        #
        # @param preferences [Knockapi::Recipients::PreferenceSetRequest] A request to set a preference set for a recipient.
        #
        # @param user_ids [Array<String>] A list of user IDs.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::BulkOperation]
        #
        # @see Knockapi::Models::Users::BulkSetPreferencesParams
        def set_preferences(params)
          parsed, options = Knockapi::Users::BulkSetPreferencesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/preferences",
            body: parsed,
            model: Knockapi::BulkOperation,
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
