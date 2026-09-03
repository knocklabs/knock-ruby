# typed: strong

module Knockapi
  module Resources
    class Users
      # The preference center is a hosted page where users can manage their notification
      # preferences.
      class PreferenceCenter
        # Generates a signed preference center URL and token for the given user in the
        # current environment.
        sig do
          params(
            user_id: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(
            Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse
          )
        end
        def generate_signed_url(
          # The unique identifier of the user.
          user_id,
          request_options: {}
        )
        end

        # Returns the preference center config with environment metadata for the given
        # user.
        sig do
          params(
            user_id: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Models::Users::PreferenceCenterGetConfigResponse)
        end
        def get_config(
          # The unique identifier of the user.
          user_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
