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

      # @!attribute name
      #   An optional name for the tenant.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Object, nil]
      optional :settings, Knockapi::Internal::Type::Unknown, nil?: true

      # @!method initialize(id:, _typename:, name: nil, settings: nil)
      #   A tenant entity.
      #
      #   @param id [String]
      #   @param _typename [String]
      #   @param name [String, nil]
      #   @param settings [Object, nil]
    end
  end
end
