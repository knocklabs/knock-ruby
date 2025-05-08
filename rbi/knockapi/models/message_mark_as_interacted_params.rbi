# typed: strong

module Knockapi
  module Models
    class MessageMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # Metadata about the interaction.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, T.anything],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Metadata about the interaction.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            metadata: T::Hash[Symbol, T.anything],
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
