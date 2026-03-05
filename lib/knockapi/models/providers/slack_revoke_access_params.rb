# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#revoke_access
      class SlackRevokeAccessParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference.
        #
        #   @return [String]
        required :access_token_object, String

        # @!method initialize(channel_id:, access_token_object:, request_options: {})
        #   @param channel_id [String]
        #
        #   @param access_token_object [String] A JSON encoded string containing the access token object reference.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
