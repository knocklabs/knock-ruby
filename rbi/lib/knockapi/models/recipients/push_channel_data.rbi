# typed: strong

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :tokens

        # Channel data for push providers
        sig { params(tokens: T::Array[String]).returns(T.attached_class) }
        def self.new(tokens:)
        end

        sig { override.returns({tokens: T::Array[String]}) }
        def to_hash
        end
      end
    end
  end
end
