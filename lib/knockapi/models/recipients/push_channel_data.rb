# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute tokens
        #   A list of push channel tokens.
        #
        #   @return [Array<String>]
        required :tokens, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(tokens:)
        #   The content of a push notification.
        #
        #   @param tokens [Array<String>]
      end
    end
  end
end
