# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Batch#mark_as_interacted
      class BatchMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute message_ids
        #   The message IDs to update
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!attribute metadata
        #   Metadata about the interaction
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param metadata [Hash{Symbol=>Object}, nil]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, metadata: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
