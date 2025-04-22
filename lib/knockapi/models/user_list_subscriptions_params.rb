# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list_subscriptions
    class UserListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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
      #   @return [Array<Symbol, Knockapi::Models::UserListSubscriptionsParams::Include>, nil]
      optional :include,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::UserListSubscriptionsParams::Include] }

      # @!attribute objects
      #   Only returns subscriptions for the specified object GIDs.
      #
      #   @return [Array<String>, nil]
      optional :objects, Knockapi::Internal::Type::ArrayOf[String]

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(after: nil, before: nil, include: nil, objects: nil, page_size: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param include [Array<Symbol, Knockapi::Models::UserListSubscriptionsParams::Include>]
      #   @param objects [Array<String>]
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
