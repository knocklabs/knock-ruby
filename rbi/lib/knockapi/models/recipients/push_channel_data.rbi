# typed: strong

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        # A list of push channel tokens.
        sig { returns(T::Array[String]) }
        attr_accessor :tokens

        # The type of provider.
        sig { returns(Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol) }
        attr_accessor :type

        # The typename of the schema.
        sig { returns(T.nilable(Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol)) }
        attr_reader :_typename

        sig { params(_typename: Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol).void }
        attr_writer :_typename

        # The content of a push notification.
        sig do
          params(
            tokens: T::Array[String],
            type: Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol,
            _typename: Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(tokens:, type:, _typename: nil); end

        sig do
          override
            .returns(
              {
                tokens: T::Array[String],
                type: Knockapi::Models::Recipients::PushChannelData::Type::OrSymbol,
                _typename: Knockapi::Models::Recipients::PushChannelData::Typename::OrSymbol
              }
            )
        end
        def to_hash; end

        # The type of provider.
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
      end
    end
  end
end
