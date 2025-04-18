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

        # @!parse
        #   # The content of a push notification.
        #   #
        #   # @param _typename [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename]
        #   # @param tokens [Array<String>]
        #   #
        #   def initialize(_typename:, tokens:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::PushChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          PUSH_CHANNEL_DATA = :PushChannelData

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
