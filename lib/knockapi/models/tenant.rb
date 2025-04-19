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

      # @!method initialize(id:, _typename:)
      #   A tenant entity.
      #
      #   @param id [String]
      #   @param _typename [String]
    end
  end
end
