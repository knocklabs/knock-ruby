# frozen_string_literal: true

module Knock
  module Models
    module Tenants
      class BulkSetParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute tenants
        #
        #   @return [Array<String, Knock::Models::TenantRequest>]
        required :tenants, -> { Knock::ArrayOf[union: Knock::Models::InlineTenantRequest] }

        # @!parse
        #   # @param tenants [Array<String, Knock::Models::TenantRequest>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(tenants:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
