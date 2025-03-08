# frozen_string_literal: true

module Knock
  module Models
    class UserGetPreferencesParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

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
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
