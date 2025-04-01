# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute objects
        #
        #   @return [Array<Knockapi::Models::InlineObjectRequest>]
        required :objects, -> { Knockapi::ArrayOf[Knockapi::Models::InlineObjectRequest] }

        # @!parse
        #   # @param objects [Array<Knockapi::Models::InlineObjectRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(objects:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
