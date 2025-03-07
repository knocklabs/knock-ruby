# frozen_string_literal: true

module Knock
  module Resources
    class Users
      class Bulk
        # Bulk delete users
        #
        # @param params [Knock::Models::Users::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :body_user_ids Body param:
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def delete(params)
          parsed, options = Knock::Models::Users::BulkDeleteParams.dump_request(params)
          query_params = [:user_ids]
          @client.request(
            method: :post,
            path: "v1/users/bulk/delete",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Knock::Models::BulkOperation,
            options: options
          )
        end

        # Bulk identifies users
        #
        # @param params [Knock::Models::Users::BulkIdentifyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Knock::Models::InlineIdentifyUserRequest>] :users
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def identify(params)
          parsed, options = Knock::Models::Users::BulkIdentifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/identify",
            body: parsed,
            model: Knock::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set preferences
        #
        # @param params [Knock::Models::Users::BulkSetPreferencesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Knock::Models::PreferenceSetRequest] :preferences Set preferences for a recipient
        #
        #   @option params [Array<String>] :user_ids
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def set_preferences(params)
          parsed, options = Knock::Models::Users::BulkSetPreferencesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/users/bulk/preferences",
            body: parsed,
            model: Knock::Models::BulkOperation,
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
