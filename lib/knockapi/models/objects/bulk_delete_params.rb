# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#delete
      class BulkDeleteParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute object_ids
        #   The IDs of the objects to delete
        #
        #   @return [Array<String>]
        required :object_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @param object_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(object_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
