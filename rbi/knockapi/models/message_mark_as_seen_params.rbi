# typed: strong

module Knockapi
  module Models
    class MessageMarkAsSeenParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::MessageMarkAsSeenParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message_id

      sig do
        params(
          message_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(message_id:, request_options: {})
      end

      sig do
        override.returns(
          { message_id: String, request_options: Knockapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
