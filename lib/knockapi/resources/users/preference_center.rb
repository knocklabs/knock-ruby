# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      # The preference center is a hosted page where users can manage their notification
      # preferences.
      class PreferenceCenter
        # Generates a signed preference center URL and token for the given user in the
        # current environment.
        #
        # @overload generate_signed_url(user_id, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse]
        #
        # @see Knockapi::Models::Users::PreferenceCenterGenerateSignedURLParams
        def generate_signed_url(user_id, params = {})
          @client.request(
            method: :post,
            path: ["v1/users/%1$s/preference_center/signed_url", user_id],
            model: Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse,
            options: params[:request_options]
          )
        end

        # Returns the preference center config with environment metadata for the given
        # user.
        #
        # @overload get_config(user_id, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::PreferenceCenterGetConfigResponse]
        #
        # @see Knockapi::Models::Users::PreferenceCenterGetConfigParams
        def get_config(user_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/preference_center/config", user_id],
            model: Knockapi::Models::Users::PreferenceCenterGetConfigResponse,
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
