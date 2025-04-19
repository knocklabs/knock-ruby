# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list
    class ObjectListParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] include
      #   Includes preferences of the objects in the response.
      #
      #   @return [Array<Symbol, Knockapi::Models::ObjectListParams::Include>, nil]
      optional :include,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::ObjectListParams::Include] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::ObjectListParams::Include>]
      #   attr_writer :include

      # @!attribute [r] page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!method initialize(after: nil, before: nil, include: nil, page_size: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param include [Array<Symbol, Knockapi::Models::ObjectListParams::Include>]
      #   @param page_size [Integer]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Knockapi::Internal::Type::Enum

        PREFERENCES = :preferences

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
