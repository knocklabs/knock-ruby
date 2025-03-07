# frozen_string_literal: true

module Knock
  module Models
    class PushChannelData < Knock::BaseModel
      # @!attribute tokens
      #
      #   @return [Array<String>]
      required :tokens, Knock::ArrayOf[String]

      # @!parse
      #   # Channel data for push providers
      #   #
      #   # @param tokens [Array<String>]
      #   #
      #   def initialize(tokens:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
