# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list
    class ObjectListParams < Knockapi::Internal::Type::BaseModel
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

      # @!attribute include
      #   Includes preferences of the objects in the response.
      #
      #   @return [Array<Symbol, Knockapi::Models::ObjectListParams::Include>, nil]
      optional :include, -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::ObjectListParams::Include] }

      # @!attribute page_size
      #   The number of items per page (defaults to 50).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(after: nil, before: nil, include: nil, page_size: nil, request_options: {})
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param include [Array<Symbol, Knockapi::Models::ObjectListParams::Include>] Includes preferences of the objects in the response.
      #
      #   @param page_size [Integer] The number of items per page (defaults to 50).
      #
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
