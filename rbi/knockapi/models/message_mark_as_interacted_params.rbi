# typed: strong

module Knockapi
  module Models
    class MessageMarkAsInteractedParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::MessageMarkAsInteractedParams,
            Knockapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :message_id

      # Metadata about the interaction.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          message_id: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        message_id:,
        # Metadata about the interaction.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            message_id: String,
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
