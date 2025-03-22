# typed: strong

module Knockapi
  module Models
    class MessageMarkAsInteractedParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Metadata about the interaction
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
