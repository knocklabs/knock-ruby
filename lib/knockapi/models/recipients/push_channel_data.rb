# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename]
        required :_typename,
                 enum: -> { Knockapi::Models::Recipients::PushChannelData::Typename },
                 api_name: :__typename

        # @!attribute tokens
        #   A list of push channel tokens.
        #
        #   @return [Array<String>]
        required :tokens, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(_typename:, tokens:)
        #   The content of a push notification.
        #
        #   @param _typename [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename]
        #   @param tokens [Array<String>]

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::PushChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          PUSH_CHANNEL_DATA = :PushChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
