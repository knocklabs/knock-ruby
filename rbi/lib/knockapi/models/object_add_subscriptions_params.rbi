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
      attr_accessor :recipients

      # The custom properties associated with the subscription
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :properties

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
