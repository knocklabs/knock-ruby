# typed: strong

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelDataPlayerIDsOnly < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of OneSignal player IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :player_ids

        # OneSignal channel data.
        sig { params(player_ids: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # A list of OneSignal player IDs.
          player_ids:
        )
        end

        sig { override.returns({ player_ids: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
