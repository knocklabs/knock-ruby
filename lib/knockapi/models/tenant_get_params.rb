# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#get
    class TenantGetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute resolve_full_preference_settings
      #   When true, merges environment-level default preferences into the tenant's
      #   `settings.preference_set` field before returning the response. Defaults to
      #   false.
      #
      #   @return [Boolean, nil]
      optional :resolve_full_preference_settings, Knockapi::Internal::Type::Boolean

      # @!method initialize(resolve_full_preference_settings: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::TenantGetParams} for more details.
      #
      #   @param resolve_full_preference_settings [Boolean] When true, merges environment-level default preferences into the tenant's `setti
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
