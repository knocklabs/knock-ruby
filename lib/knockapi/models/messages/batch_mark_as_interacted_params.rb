# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Batch#mark_as_interacted
      class BatchMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute message_ids
        #   The message IDs to batch mark as interacted with.
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!attribute metadata
        #   Metadata about the interaction.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!method initialize(message_ids:, metadata: nil, request_options: {})
        #   @param message_ids [Array<String>] The message IDs to batch mark as interacted with.
        #
        #   @param metadata [Hash{Symbol=>Object}, nil] Metadata about the interaction.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
