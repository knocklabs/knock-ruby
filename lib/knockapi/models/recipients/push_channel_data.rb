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

        # @!attribute type
        #   The push provider type
        #
        #   @return [Symbol, Knockapi::Models::Recipients::PushChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::PushChannelData::Type }

        # @!method initialize(_typename:, tokens:, type:)
        #   The content of a push notification.
        #
        #   @param _typename [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename]
        #   @param tokens [Array<String>]
        #   @param type [Symbol, Knockapi::Models::Recipients::PushChannelData::Type]

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::PushChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          PUSH_CHANNEL_DATA = :PushChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The push provider type
        #
        # @see Knockapi::Models::Recipients::PushChannelData#type
        module Type
          extend Knockapi::Internal::Type::Enum

          PUSH_FCM = :push_fcm
          PUSH_APNS = :push_apns
          PUSH_EXPO = :push_expo

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
