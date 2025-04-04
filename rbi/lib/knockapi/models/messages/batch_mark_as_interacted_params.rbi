# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMarkAsInteractedParams < Knockapi::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The message IDs to update
        sig { returns(T::Array[String]) }
        attr_accessor :message_ids

        # Metadata about the interaction
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :metadata

        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(message_ids:, metadata: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                message_ids: T::Array[String],
                metadata: T.nilable(T::Hash[Symbol, T.anything]),
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
