# typed: strong

module Knock
  module Models
    class MessageMarkAsInteractedParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def metadata=(_)
      end

      sig do
        params(
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(metadata: nil, request_options: {})
      end

      sig do
        override.returns({metadata: T::Hash[Symbol, T.anything], request_options: Knock::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
