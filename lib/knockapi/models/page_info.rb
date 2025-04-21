# frozen_string_literal: true

module Knockapi
  module Models
    class PageInfo < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer]
      required :page_size, Integer

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!method initialize(_typename:, page_size:, after: nil, before: nil)
      #   Pagination information for a list of resources.
      #
      #   @param _typename [String]
      #   @param page_size [Integer]
      #   @param after [String, nil]
      #   @param before [String, nil]
    end
  end
end
