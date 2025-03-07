# frozen_string_literal: true

module Knock
  module Models
    module Objects
      class BulkSetParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute objects
        #
        #   @return [Array<Knock::Models::InlineObjectRequest>]
        required :objects, -> { Knock::ArrayOf[Knock::Models::InlineObjectRequest] }

        # @!parse
        #   # @param objects [Array<Knock::Models::InlineObjectRequest>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(objects:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
