# typed: strong

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::Internal::Type::BaseModel
        # A list of OneSignal player IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :player_ids

        # The type of provider.
        sig { returns(Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol) }
        attr_accessor :type

        # The typename of the schema.
        sig { returns(T.nilable(Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol)) }
        attr_reader :_typename

        sig { params(_typename: Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol).void }
        attr_writer :_typename

        # OneSignal channel data.
        sig do
          params(
            player_ids: T::Array[String],
            type: Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol,
            _typename: Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(player_ids:, type:, _typename: nil); end

        sig do
          override
            .returns(
              {
                player_ids: T::Array[String],
                type: Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol,
                _typename: Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol
              }
            )
        end
        def to_hash; end

        # The type of provider.
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_ONE_SIGNAL =
            T.let(:push_one_signal, Knockapi::Models::Recipients::OneSignalChannelData::Type::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::OneSignalChannelData::Type::TaggedSymbol]) }
          def self.values; end
        end

        # The typename of the schema.
        module Typename
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Typename) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_SIGNAL_CHANNEL_DATA =
            T.let(:OneSignalChannelData, Knockapi::Models::Recipients::OneSignalChannelData::Typename::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::OneSignalChannelData::Typename::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
