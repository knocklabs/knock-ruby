# typed: strong

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::ObjectDeleteSubscriptionsParams,
            Knockapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :collection

      sig { returns(String) }
      attr_accessor :object_id_

      # The recipients of the subscription. You can subscribe up to 100 recipients to an
      # object at a time.
      sig do
        returns(
          T::Array[T.any(String, Knockapi::RecipientReference::ObjectReference)]
        )
      end
      attr_accessor :recipients

      sig do
        params(
          collection: String,
          object_id_: String,
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        collection:,
        object_id_:,
        # The recipients of the subscription. You can subscribe up to 100 recipients to an
        # object at a time.
        recipients:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection: String,
            object_id_: String,
            recipients:
              T::Array[
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ],
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
