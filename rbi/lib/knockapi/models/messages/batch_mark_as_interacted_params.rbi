# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMarkAsInteractedParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # The message IDs to update
        sig { returns(T::Array[String]) }
        def message_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def message_ids=(_)
        end

        # Metadata about the interaction
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
        end
        def metadata=(_)
        end

        sig do
          params(
            message_ids: T::Array[String],
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
