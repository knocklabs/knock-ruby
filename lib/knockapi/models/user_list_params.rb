# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list
    class UserListParams < Knockapi::Internal::Type::BaseModel
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
      #   Associated resources to include in the response.
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListParams::Include>, nil]
      optional :include, -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::UserListParams::Include] }

      # @!attribute order
      #   Sort by insertion order. Pass `asc` for oldest first, or `desc` for newest
      #   first. Defaults to oldest first when omitted.
      #
      #   @return [Symbol, Knockapi::Models::UserListParams::Order, nil]
      optional :order, enum: -> { Knockapi::UserListParams::Order }

      # @!attribute page_size
      #   The number of items per page (defaults to 50).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(after: nil, before: nil, include: nil, order: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::UserListParams} for more details.
      #
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param include [Array<Symbol, Knockapi::Models::UserListParams::Include>] Associated resources to include in the response.
      #
      #   @param order [Symbol, Knockapi::Models::UserListParams::Order] Sort by insertion order. Pass `asc` for oldest first, or `desc` for newest first
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

      # Sort by insertion order. Pass `asc` for oldest first, or `desc` for newest
      # first. Defaults to oldest first when omitted.
      module Order
        extend Knockapi::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
