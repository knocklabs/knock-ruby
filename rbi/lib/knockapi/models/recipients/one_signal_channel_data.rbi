# typed: strong

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::Internal::Type::BaseModel
        # The typename of the schema.
        sig { returns(Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol) }
        attr_accessor :_typename

        # A list of OneSignal player IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :player_ids

        # The channel type identifier
        sig { returns(Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol) }
        attr_accessor :type

        # OneSignal channel data.
        sig do
          params(
            _typename: Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol,
            player_ids: T::Array[String],
            type: Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(_typename:, player_ids:, type:); end

        sig do
          override
            .returns(
              {
                _typename: Knockapi::Models::Recipients::OneSignalChannelData::Typename::OrSymbol,
                player_ids: T::Array[String],
                type: Knockapi::Models::Recipients::OneSignalChannelData::Type::OrSymbol
              }
            )
        end
        def to_hash; end

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

        # The channel type identifier
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_ONE_SIGNAL =
            T.let(:push_one_signal, Knockapi::Models::Recipients::OneSignalChannelData::Type::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::OneSignalChannelData::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
