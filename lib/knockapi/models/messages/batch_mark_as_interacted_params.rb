# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      class BatchMarkAsInteractedParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute message_ids
        #   The message IDs to update
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::ArrayOf[String]

        # @!attribute metadata
        #   Metadata about the interaction
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Knockapi::HashOf[Knockapi::Unknown], nil?: true

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param metadata [Hash{Symbol=>Object}, nil]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, metadata: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
