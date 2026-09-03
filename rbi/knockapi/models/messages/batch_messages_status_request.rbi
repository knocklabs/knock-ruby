# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMessagesStatusRequest < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Messages::BatchMessagesStatusRequest,
              Knockapi::Internal::AnyHash
            )
          end

        # The message IDs to update the status of.
        sig { returns(T::Array[String]) }
        attr_accessor :message_ids

        # Request to update the status of multiple messages in batch.
        sig { params(message_ids: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # The message IDs to update the status of.
          message_ids:
        )
        end

        sig { override.returns({ message_ids: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
