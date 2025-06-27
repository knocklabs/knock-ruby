# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#list
    class TenantListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute name
      #   Filter tenants by name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page_size
      #   The number of items per page (defaults to 50).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute tenant_id
      #   Filter tenants by ID.
      #
      #   @return [String, nil]
      optional :tenant_id, String

      # @!method initialize(after: nil, before: nil, name: nil, page_size: nil, tenant_id: nil, request_options: {})
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param name [String] Filter tenants by name.
      #
      #   @param page_size [Integer] The number of items per page (defaults to 50).
      #
      #   @param tenant_id [String] Filter tenants by ID.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
