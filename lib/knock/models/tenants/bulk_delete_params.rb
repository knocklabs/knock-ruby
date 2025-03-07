# frozen_string_literal: true

module Knock
  module Models
    module Tenants
      class BulkDeleteParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute tenant_ids
        #   The IDs of the tenants to delete
        #
        #   @return [Array<String>]
        required :tenant_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @param tenant_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(tenant_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
