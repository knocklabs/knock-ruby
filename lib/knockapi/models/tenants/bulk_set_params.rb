# frozen_string_literal: true

module Knockapi
  module Models
    module Tenants
      # @see Knockapi::Resources::Tenants::Bulk#set
      class BulkSetParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute tenants
        #
        #   @return [Array<String, Knockapi::Models::TenantRequest>]
        required :tenants, -> { Knockapi::ArrayOf[union: Knockapi::Models::InlineTenantRequest] }

        # @!parse
        #   # @param tenants [Array<String, Knockapi::Models::TenantRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(tenants:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
