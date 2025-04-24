# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list
    class Object < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute collection
      #   The collection this object belongs to.
      #
      #   @return [String]
      required :collection, String

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute created_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!method initialize(id:, _typename:, collection:, updated_at:, created_at: nil)
      #   A custom [Object](/concepts/objects) entity which belongs to a collection.
      #
      #   @param id [String]
      #   @param _typename [String]
      #   @param collection [String]
      #   @param updated_at [Time]
      #   @param created_at [Time, nil]
    end
  end
end
