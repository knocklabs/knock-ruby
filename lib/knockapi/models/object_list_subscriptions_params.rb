# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list_subscriptions
    class ObjectListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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
      #   Additional fields to include in the response.
      #
      #   @return [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>, nil]
      optional :include,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::ObjectListSubscriptionsParams::Include] }

      # @!attribute mode
      #   Mode of the request.
      #
      #   @return [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode, nil]
      optional :mode, enum: -> { Knockapi::Models::ObjectListSubscriptionsParams::Mode }

      # @!attribute objects
      #   Objects to filter by (only used if mode is `recipient`).
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil]
      optional :objects, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientReference] }

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute recipients
      #   Recipients to filter by (only used if mode is `object`).
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil]
      optional :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientReference] }

      # @!method initialize(after: nil, before: nil, include: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>]
      #   @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      #   @param objects [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      #   @param page_size [Integer]
      #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Knockapi::Internal::Type::Enum

        PREFERENCES = :preferences

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Mode of the request.
      module Mode
        extend Knockapi::Internal::Type::Enum

        RECIPIENT = :recipient
        OBJECT = :object

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
