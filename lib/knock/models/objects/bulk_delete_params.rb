# frozen_string_literal: true

module Knock
  module Models
    module Objects
      class BulkDeleteParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute object_ids
        #   The IDs of the objects to delete
        #
        #   @return [Array<String>]
        required :object_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @param object_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(object_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
