# typed: strong

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
        # The recipients of the subscription. You can subscribe up to 100 recipients to an
        # object at a time.
        recipients:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
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
