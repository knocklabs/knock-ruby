# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#delete
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute object_ids
        #   A list of object IDs.
        #
        #   @return [Array<String>]
        required :object_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(object_ids:, request_options: {})
        #   @param object_ids [Array<String>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
