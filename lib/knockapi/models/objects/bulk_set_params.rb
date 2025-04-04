# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#set
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute objects
        #
        #   @return [Array<Knockapi::Models::InlineObjectRequest>]
        required :objects, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::InlineObjectRequest] }

        # @!parse
        #   # @param objects [Array<Knockapi::Models::InlineObjectRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(objects:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
