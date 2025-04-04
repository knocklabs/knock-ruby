# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#delete
    class TenantDeleteParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
