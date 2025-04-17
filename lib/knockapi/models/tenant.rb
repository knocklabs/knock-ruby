# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#list
    class Tenant < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the tenant.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!parse
      #   # A tenant entity.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   #
      #   def initialize(id:, _typename:, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
