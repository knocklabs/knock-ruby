# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Bulk
        # Permanently deletes up to 1,000 users at a time.
        #
        # @overload delete(user_ids:, request_options: {})
        #
        # @param user_ids [Array<String>] A list of user IDs.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
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
        # to 1,000 users in a single batch with various properties, preferences, and
        # channel data.
        #
        # @overload identify(users:, request_options: {})
        #
        # @param users [Array<Knockapi::Models::InlineIdentifyUserRequest>] A list of users.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
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

        # Bulk sets the preferences for up to 1,000 users at a time. The preference
        # set `:id` can be either `default` or a `tenant.id`. Learn more
        # about [per-tenant preferences](/preferences/tenant-preferences). Note that this
        # is a destructive operation and will replace any existing users' preferences with
        # the preferences sent.
        #
        # @overload set_preferences(preferences:, user_ids:, request_options: {})
        #
        # @param preferences [Knockapi::Models::Recipients::PreferenceSetRequest] A request to set a preference set for a recipient.
        #
        # @param user_ids [Array<String>] A list of user IDs.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
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
