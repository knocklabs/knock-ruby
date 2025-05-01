# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#mark_as_interacted
    class MessageMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute metadata
      #   Metadata about the interaction.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

      # @!method initialize(metadata: nil, request_options: {})
      #   @param metadata [Hash{Symbol=>Object}] Metadata about the interaction.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
