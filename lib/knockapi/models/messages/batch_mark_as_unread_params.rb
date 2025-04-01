# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      class BatchMarkAsUnreadParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute message_ids
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
