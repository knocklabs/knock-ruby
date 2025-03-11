# typed: strong

module Knockapi
  module Models
    class MessageMarkAsInteractedParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def metadata=(_)
      end

      sig do
        params(
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(metadata: nil, request_options: {})
      end

      sig do
        override.returns({metadata: T::Hash[Symbol, T.anything], request_options: Knockapi::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
