# frozen_string_literal: true

module Knockapi
  module Models
    module Tenants
      class BulkDeleteParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute tenant_ids
        #   The IDs of the tenants to delete
        #
        #   @return [Array<String>]
        required :tenant_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @param tenant_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(tenant_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
