# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#mark_as_interacted
    class MessageMarkAsInteractedParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute [r] metadata
      #   Metadata about the interaction
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knockapi::HashOf[Knockapi::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :metadata

      # @!parse
      #   # @param metadata [Hash{Symbol=>Object}]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
