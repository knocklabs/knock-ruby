# frozen_string_literal: true

module Knock
  module Models
    module Messages
      class BatchUnarchiveParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute message_ids
        #
        #   @return [Array<String>]
        required :message_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
