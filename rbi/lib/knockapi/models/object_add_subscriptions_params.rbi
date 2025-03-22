# typed: strong

module Knockapi
  module Models
    class ObjectAddSubscriptionsParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The recipients to subscribe to the object
      sig do
        returns(
          T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
        )
      end
      def recipients
      end

      sig do
        params(
          _: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
        )
          .returns(
            T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
          )
      end
      def recipients=(_)
      end

      # The custom properties associated with the subscription
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def properties
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def properties=(_)
      end

      sig do
        params(
          recipients: T::Array[
          T.any(
            String,
            Knockapi::Models::InlineIdentifyUserRequest,
            Knockapi::Util::AnyHash,
            Knockapi::Models::InlineObjectRequest
          )
          ],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(recipients:, properties: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
              properties: T.nilable(T::Hash[Symbol, T.anything]),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
