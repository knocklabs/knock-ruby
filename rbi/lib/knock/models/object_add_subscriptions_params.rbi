# typed: strong

module Knock
  module Models
    class ObjectAddSubscriptionsParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig do
        returns(
          T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
        )
      end
      def recipients
      end

      sig do
        params(
          _: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
        )
          .returns(
            T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
          )
      end
      def recipients=(_)
      end

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
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(recipients:, properties: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
              properties: T.nilable(T::Hash[Symbol, T.anything]),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
