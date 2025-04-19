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
      #   @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference>, nil]
      optional :objects,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ObjectListSubscriptionsParams::Object] }

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute recipients
      #   Recipients to filter by (only used if mode is `object`).
      #
      #   @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>, nil]
      optional :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ObjectListSubscriptionsParams::Recipient] }

      # @!method initialize(after: nil, before: nil, include: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param include [Array<Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include>]
      #   @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      #   @param objects [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference>]
      #   @param page_size [Integer]
      #   @param recipients [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>]
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

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        # The id of the user.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
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
          #   @param id [String]
          #   @param collection [String]
        end

        # @!method self.variants
        #   @return [Array(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)]
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        # The id of the user.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
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
          #   @param id [String]
          #   @param collection [String]
        end

        # @!method self.variants
        #   @return [Array(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)]
      end
    end
  end
end
