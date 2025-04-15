# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list_subscriptions
    class UserListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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

      # @!attribute [r] objects
      #   Objects to filter by
      #
      #   @return [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1>, nil]
      optional :objects,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::UserListSubscriptionsParams::Object] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1>]
      #   attr_writer :objects

      # @!attribute [r] page_size
      #   The page size to fetch
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!parse
      #   # @param after [String]
      #   # @param before [String]
      #   # @param objects [Array<String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1>]
      #   # @param page_size [Integer]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after: nil, before: nil, objects: nil, page_size: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1 }

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
        #   # @return [Array(String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1)]
        #   def self.variants; end
      end
    end
  end
end
