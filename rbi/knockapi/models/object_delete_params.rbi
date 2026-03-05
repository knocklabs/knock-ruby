# typed: strong

module Knockapi
  module Models
    class ObjectDeleteParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ObjectDeleteParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :collection

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          collection: String,
          id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(collection:, id:, request_options: {})
      end

      sig do
        override.returns(
          {
            collection: String,
            id: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
