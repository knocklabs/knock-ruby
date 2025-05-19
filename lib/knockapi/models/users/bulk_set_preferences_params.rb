# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#set_preferences
      class BulkSetPreferencesParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute preferences
        #   A request to set a preference set for a recipient.
        #
        #   @return [Knockapi::Recipients::PreferenceSetRequest]
        required :preferences, -> { Knockapi::Recipients::PreferenceSetRequest }

        # @!attribute user_ids
        #   A list of user IDs.
        #
        #   @return [Array<String>]
        required :user_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(preferences:, user_ids:, request_options: {})
        #   @param preferences [Knockapi::Recipients::PreferenceSetRequest] A request to set a preference set for a recipient.
        #
        #   @param user_ids [Array<String>] A list of user IDs.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
