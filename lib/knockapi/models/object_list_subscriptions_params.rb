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
      #   Mode of the request. `recipient` to list the objects that the provided object is
      #   subscribed to, `object` to list the recipients that subscribe to the provided
      #   object.
      #
      #   @return [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode, nil]
      optional :mode, enum: -> { Knockapi::Models::ObjectListSubscriptionsParams::Mode }

      # @!attribute objects
      #   Objects to filter by (only used if mode is `recipient`).
      #
      #   @return [Array<Knockapi::Models::ObjectListSubscriptionsParams::Object>, nil]
      optional :objects,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::ObjectListSubscriptionsParams::Object] }

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
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ObjectListSubscriptionsParams} for more details.
      #
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>] Additional fields to include in the response.
      #
      #   @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode] Mode of the request. `recipient` to list the objects that the provided object is
      #   ...
      #
      #   @param objects [Array<Knockapi::Models::ObjectListSubscriptionsParams::Object>] Objects to filter by (only used if mode is `recipient`).
      #
      #   @param page_size [Integer] The number of items per page.
      #
      #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] Recipients to filter by (only used if mode is `object`).
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Knockapi::Internal::Type::Enum

        PREFERENCES = :preferences

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Mode of the request. `recipient` to list the objects that the provided object is
      # subscribed to, `object` to list the recipients that subscribe to the provided
      # object.
      module Mode
        extend Knockapi::Internal::Type::Enum

        RECIPIENT = :recipient
        OBJECT = :object

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Object < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   An identifier for the recipient object.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute collection
        #   The collection the recipient object belongs to.
        #
        #   @return [String, nil]
        optional :collection, String

        # @!method initialize(id: nil, collection: nil)
        #   A reference to a recipient object.
        #
        #   @param id [String] An identifier for the recipient object.
        #
        #   @param collection [String] The collection the recipient object belongs to.
      end
    end
  end
end
