# frozen_string_literal: true

module Knock
  module Models
    class Object < Knock::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!parse
      #   # A custom-object entity which belongs to a collection.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param collection [String]
      #   # @param updated_at [Time]
      #   # @param created_at [Time, nil]
      #   #
      #   def initialize(id:, _typename:, collection:, updated_at:, created_at: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
