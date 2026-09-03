# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#mark_message_as_interacted
      class GuideMarkMessageAsInteractedParams < Knockapi::Models::Users::GuideInteractedRequest
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(user_id:, request_options: {})
        #   @param user_id [String]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
