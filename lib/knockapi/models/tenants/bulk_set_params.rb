# frozen_string_literal: true

module Knockapi
  module Models
    module Tenants
      # @see Knockapi::Resources::Tenants::Bulk#set
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute tenants
        #   The tenants to be upserted.
        #
        #   @return [Array<String, Knockapi::Models::TenantRequest>]
        required :tenants, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::InlineTenantRequest] }

        # @!parse
        #   # @param tenants [Array<String, Knockapi::Models::TenantRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(tenants:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
