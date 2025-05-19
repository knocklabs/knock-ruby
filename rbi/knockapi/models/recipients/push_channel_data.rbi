# typed: strong

module Knockapi
  module Models
    module Recipients
      class PushChannelData < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PushChannelData,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of push channel tokens.
        sig { returns(T::Array[String]) }
        attr_accessor :tokens

        # The content of a push notification.
        sig { params(tokens: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # A list of push channel tokens.
          tokens:
        )
        end

        sig { override.returns({ tokens: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
