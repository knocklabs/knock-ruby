# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::BaseModel
        # @!attribute tokens
        #
        #   @return [Array<String>]
        required :tokens, Knockapi::ArrayOf[String]

        # @!parse
        #   # Channel data for push providers
        #   #
        #   # @param tokens [Array<String>]
        #   #
        #   def initialize(tokens:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
