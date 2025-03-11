# frozen_string_literal: true

module Knockapi
  module Models
    # @abstract
    #
    # An inline tenant request
    class InlineTenantRequest < Knockapi::Union
      # A tenant identifier
      variant String

      # A tenant to be set in the system
      variant -> { Knockapi::Models::TenantRequest }
    end
  end
end
