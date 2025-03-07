# typed: strong

module Knock
  module Models
    class ObjectDeleteSubscriptionsParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

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

      sig do
        params(
          collection: String,
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(collection:, recipients:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              collection: String,
              recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
