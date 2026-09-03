# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::PreferenceCenter#generate_signed_url
      class PreferenceCenterGenerateSignedURLResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute token
        #   The signed JWT token for the preference center, usable as the `/p/{token}` path
        #   segment.
        #
        #   @return [String]
        required :token, String

        # @!attribute url
        #   The full URL to the preference center for the user.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(token:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse} for more
        #   details.
        #
        #   A signed preference center URL and token for a user.
        #
        #   @param token [String] The signed JWT token for the preference center, usable as the `/p/{token}` path
        #
        #   @param url [String] The full URL to the preference center for the user.
      end
    end
  end
end
