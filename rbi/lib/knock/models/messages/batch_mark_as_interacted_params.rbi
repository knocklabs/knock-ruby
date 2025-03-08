# typed: strong

module Knock
  module Models
    module Messages
      class BatchMarkAsInteractedParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[String]) }
        def message_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def message_ids=(_)
        end

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
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
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
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
