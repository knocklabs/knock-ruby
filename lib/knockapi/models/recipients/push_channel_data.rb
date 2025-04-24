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

        # @!attribute type
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::PushChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::PushChannelData::Type }

        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename, nil]
        optional :_typename,
                 enum: -> { Knockapi::Models::Recipients::PushChannelData::Typename },
                 api_name: :__typename

        # @!method initialize(tokens:, type:, _typename: nil)
        #   The content of a push notification.
        #
        #   @param tokens [Array<String>]
        #   @param type [Symbol, Knockapi::Models::Recipients::PushChannelData::Type]
        #   @param _typename [Symbol, Knockapi::Models::Recipients::PushChannelData::Typename]

        # The type of provider.
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
