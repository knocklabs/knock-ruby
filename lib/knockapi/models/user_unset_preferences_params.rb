# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#unset_preferences
    class UserUnsetPreferencesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(user_id:, id:, request_options: {})
      #   @param user_id [String]
      #   @param id [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
