# typed: strong

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        # The typename of the schema.
        sig { returns(Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol) }
        attr_accessor :_typename

        # A list of push channel tokens.
        sig { returns(T::Array[String]) }
        attr_accessor :tokens

        # The push provider type
        sig { returns(Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol) }
        attr_accessor :type

        # The content of a push notification.
        sig do
          params(
            _typename: Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol,
            tokens: T::Array[String],
            type: Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(_typename:, tokens:, type:); end

        sig do
          override
            .returns(
              {
                _typename: Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol,
                tokens: T::Array[String],
                type: Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol
              }
            )
        end
        def to_hash; end

        # The typename of the schema.
        module Typename
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::PushChannelData::Typename) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_CHANNEL_DATA =
            T.let(:PushChannelData, Knockapi::Models::Recipients::PushChannelData::Typename::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::PushChannelData::Typename::TaggedSymbol]) }
          def self.values; end
        end

        # The push provider type
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::PushChannelData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_FCM = T.let(:push_fcm, Knockapi::Models::Recipients::PushChannelData::Type::TaggedSymbol)
          PUSH_APNS = T.let(:push_apns, Knockapi::Models::Recipients::PushChannelData::Type::TaggedSymbol)
          PUSH_EXPO = T.let(:push_expo, Knockapi::Models::Recipients::PushChannelData::Type::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::PushChannelData::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
