# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list_subscriptions
    class ObjectListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] after
      #   The cursor to fetch entries after
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] mode
      #   Mode of the request
      #
      #   @return [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode, nil]
      optional :mode, enum: -> { Knockapi::Models::ObjectListSubscriptionsParams::Mode }

      # @!parse
      #   # @return [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      #   attr_writer :mode

      # @!attribute [r] objects
      #   Objects to filter by (only used if mode is `recipient`)
      #
      #   @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1>, nil]
      optional :objects,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ObjectListSubscriptionsParams::Object] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1>]
      #   attr_writer :objects

      # @!attribute [r] page_size
      #   The page size to fetch
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] recipients
      #   Recipients to filter by (only used if mode is `object`)
      #
      #   @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1>, nil]
      optional :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ObjectListSubscriptionsParams::Recipient] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1>]
      #   attr_writer :recipients

      # @!parse
      #   # @param after [String]
      #   # @param before [String]
      #   # @param mode [Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode]
      #   # @param objects [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1>]
      #   # @param page_size [Integer]
      #   # @param recipients [Array<String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1>]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after: nil, before: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # Mode of the request
      module Mode
        extend Knockapi::Internal::Type::Enum

        RECIPIENT = :recipient
        OBJECT = :object

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1 }

        class UnionMember1 < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1)]
        #   def self.variants; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1 }

        class UnionMember1 < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1)]
        #   def self.variants; end
      end
    end
  end
end
