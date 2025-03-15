# typed: strong

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::BaseModel
        # The OneSignal player IDs
        sig { returns(T::Array[String]) }
        def player_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def player_ids=(_)
        end

        # OneSignal channel data
        sig { params(player_ids: T::Array[String]).returns(T.attached_class) }
        def self.new(player_ids:)
        end

        sig { override.returns({player_ids: T::Array[String]}) }
        def to_hash
        end
      end
    end
  end
end
