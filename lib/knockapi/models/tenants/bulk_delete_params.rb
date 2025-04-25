# frozen_string_literal: true

module Knockapi
  module Models
    module Tenants
      # @see Knockapi::Resources::Tenants::Bulk#delete
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute tenant_ids
        #   The IDs of the tenants to delete.
        #
        #   @return [Array<String>]
        required :tenant_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(tenant_ids:, request_options: {})
        #   @param tenant_ids [Array<String>] The IDs of the tenants to delete.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
