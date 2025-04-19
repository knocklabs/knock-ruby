# frozen_string_literal: true

module Knockapi
  module Models
    module Tenants
      # @see Knockapi::Resources::Tenants::Bulk#set
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute tenants
        #   The tenants to be upserted.
        #
        #   @return [Array<String, Knockapi::Models::TenantRequest>]
        required :tenants, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::InlineTenantRequest] }

        # @!method initialize(tenants:, request_options: {})
        #   @param tenants [Array<String, Knockapi::Models::TenantRequest>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
