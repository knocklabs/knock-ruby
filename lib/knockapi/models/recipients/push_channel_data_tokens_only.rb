# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PushChannelDataTokensOnly < Knockapi::Internal::Type::BaseModel
        # @!attribute tokens
        #   A list of push channel tokens.
        #
        #   @return [Array<String>]
        required :tokens, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(tokens:)
        #   Push channel data.
        #
        #   @param tokens [Array<String>] A list of push channel tokens.
      end
    end
  end
end
