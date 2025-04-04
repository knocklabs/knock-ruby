# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#get_preferences
    class ObjectGetPreferencesParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] tenant
      #   Tenant ID
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!parse
      #   # @param tenant [String]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
