# frozen_string_literal: true

module Knock
  module Models
    class ObjectListPreferencesParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!parse
      #   # @param collection [String]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
