# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#get_preferences
    class UserGetPreferencesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute tenant
      #   The unique identifier for the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!method initialize(tenant: nil, request_options: {})
      #   @param tenant [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
