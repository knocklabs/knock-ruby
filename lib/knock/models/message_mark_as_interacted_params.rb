# frozen_string_literal: true

module Knock
  module Models
    class MessageMarkAsInteractedParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute [r] metadata
      #   Metadata about the interaction
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knock::HashOf[Knock::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :metadata

      # @!parse
      #   # @param metadata [Hash{Symbol=>Object}]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
