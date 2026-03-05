# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#get_preferences
    class UserGetPreferencesParams < Knockapi::Internal::Type::BaseModel
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

      # @!attribute tenant
      #   The unique identifier for the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!method initialize(user_id:, id:, tenant: nil, request_options: {})
      #   @param user_id [String]
      #
      #   @param id [String]
      #
      #   @param tenant [String] The unique identifier for the tenant.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
