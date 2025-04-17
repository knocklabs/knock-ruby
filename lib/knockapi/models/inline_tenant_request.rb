# frozen_string_literal: true

module Knockapi
  module Models
    # An request to set a tenant inline.
    module InlineTenantRequest
      extend Knockapi::Internal::Type::Union

      # The unique identifier for the tenant.
      variant String

      # A tenant to be set in the system. You can supply any additional properties on the tenant object.
      variant -> { Knockapi::Models::TenantRequest }

      # @!parse
      #   # @return [Array(String, Knockapi::Models::TenantRequest)]
      #   def self.variants; end
    end
  end
end
