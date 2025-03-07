# frozen_string_literal: true

module Knock
  module Models
    class ObjectGetChannelDataParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute object_id_
      #
      #   @return [String]
      required :object_id_, String

      # @!parse
      #   # @param collection [String]
      #   # @param object_id_ [String]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, object_id_:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
