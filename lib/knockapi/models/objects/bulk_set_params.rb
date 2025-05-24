# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#set
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute objects
        #   A list of objects.
        #
        #   @return [Array<Knockapi::Models::InlineObjectRequest>]
        required :objects, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::InlineObjectRequest] }

        # @!method initialize(objects:, request_options: {})
        #   @param objects [Array<Knockapi::Models::InlineObjectRequest>] A list of objects.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
