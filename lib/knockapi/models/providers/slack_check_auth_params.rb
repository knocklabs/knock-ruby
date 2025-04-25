# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#check_auth
      class SlackCheckAuthParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference.
        #
        #   @return [String]
        required :access_token_object, String

        # @!method initialize(access_token_object:, request_options: {})
        #   @param access_token_object [String] A JSON encoded string containing the access token object reference.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
