# typed: strong

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::Internal::Type::BaseModel
        # A list of OneSignal player IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :player_ids

        # OneSignal channel data.
        sig { params(player_ids: T::Array[String]).returns(T.attached_class) }
        def self.new(player_ids:); end

        sig { override.returns({player_ids: T::Array[String]}) }
        def to_hash; end
      end
    end
  end
end
