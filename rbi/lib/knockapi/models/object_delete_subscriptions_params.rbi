# typed: strong

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The recipients of the subscription. You can subscribe up to 100 recipients to an
      # object at a time.
      sig { returns(T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference)]) }
      attr_accessor :recipients

      sig do
        params(
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The recipients of the subscription. You can subscribe up to 100 recipients to an
        # object at a time.
        recipients:,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
