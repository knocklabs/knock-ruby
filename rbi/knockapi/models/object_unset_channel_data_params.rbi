# typed: strong

module Knockapi
  module Models
    class ObjectUnsetChannelDataParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::ObjectUnsetChannelDataParams,
            Knockapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :collection

      sig { returns(String) }
      attr_accessor :object_id_

      sig { returns(String) }
      attr_accessor :channel_id

      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(collection:, object_id_:, channel_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            collection: String,
            object_id_: String,
            channel_id: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
