# frozen_string_literal: true

module Knockapi
  module Models
    # An inline tenant request
    module InlineTenantRequest
      extend Knockapi::Union

      # A tenant identifier
      variant String

      # A tenant to be set in the system
      variant -> { Knockapi::Models::TenantRequest }

      # @!parse
      #   class << self
      #     # @return [Array(String, Knockapi::Models::TenantRequest)]
      #     def variants; end
      #   end
    end
  end
end
