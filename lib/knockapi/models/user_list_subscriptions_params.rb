# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list_subscriptions
    class UserListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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
      #   Includes preferences of the recipient subscribers in the response.
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListSubscriptionsParams::Include>, nil]
      optional :include,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::UserListSubscriptionsParams::Include] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::UserListSubscriptionsParams::Include>]
      #   attr_writer :include

      # @!attribute [r] objects
      #   Objects to filter by.
      #
      #   @return [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::ObjectReference>, nil]
      optional :objects,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::UserListSubscriptionsParams::Object] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::ObjectReference>]
      #   attr_writer :objects

      # @!attribute [r] page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!parse
      #   # @param after [String]
      #   # @param before [String]
      #   # @param include [Array<Symbol, Knockapi::Models::UserListSubscriptionsParams::Include>]
      #   # @param objects [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::ObjectReference>]
      #   # @param page_size [Integer]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after: nil, before: nil, include: nil, objects: nil, page_size: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      module Include
        extend Knockapi::Internal::Type::Enum

        PREFERENCES = :preferences

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        # An identifier for a user recipient.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::UserListSubscriptionsParams::Object::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   An identifier for the recipient object.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] collection
          #   The collection the recipient object belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!parse
          #   # @return [String]
          #   attr_writer :collection

          # @!parse
          #   # A reference to a recipient object.
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id: nil, collection: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::UserListSubscriptionsParams::Object::ObjectReference)]
        #   def self.variants; end
      end
    end
  end
end
