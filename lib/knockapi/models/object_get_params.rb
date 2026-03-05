# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#get
    class ObjectGetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(collection:, id:, request_options: {})
      #   @param collection [String]
      #   @param id [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
