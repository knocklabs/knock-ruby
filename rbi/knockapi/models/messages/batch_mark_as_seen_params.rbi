# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMarkAsSeenParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Messages::BatchMarkAsSeenParams,
              Knockapi::Internal::AnyHash
            )
          end

        # The message IDs to update the status of.
        sig { returns(T::Array[String]) }
        attr_accessor :message_ids

        sig do
          params(
            message_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The message IDs to update the status of.
          message_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              message_ids: T::Array[String],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
