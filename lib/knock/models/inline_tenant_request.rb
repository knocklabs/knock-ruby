# frozen_string_literal: true

module Knock
  module Models
    # @abstract
    #
    # An inline tenant request
    class InlineTenantRequest < Knock::Union
      # A tenant identifier
      variant String

      # A tenant to be set in the system
      variant -> { Knock::Models::TenantRequest }
    end
  end
end
