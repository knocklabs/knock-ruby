# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#mark_as_interacted
    class MessageMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] metadata
      #   Metadata about the interaction
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :metadata

      # @!parse
      #   # @param metadata [Hash{Symbol=>Object}]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
