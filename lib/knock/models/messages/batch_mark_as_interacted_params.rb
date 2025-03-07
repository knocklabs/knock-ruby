# frozen_string_literal: true

module Knock
  module Models
    module Messages
      class BatchMarkAsInteractedParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute message_ids
        #   The message IDs to update
        #
        #   @return [Array<String>]
        required :message_ids, Knock::ArrayOf[String]

        # @!attribute metadata
        #   Metadata about the interaction
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Knock::HashOf[Knock::Unknown], nil?: true

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param metadata [Hash{Symbol=>Object}, nil]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, metadata: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
