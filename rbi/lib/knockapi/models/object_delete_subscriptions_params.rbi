# typed: strong

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      sig do
        returns(
          T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
        )
      end
      attr_accessor :recipients

      sig do
        params(
          recipients: T::Array[
          T.any(
            String,
            Knockapi::Models::InlineIdentifyUserRequest,
            Knockapi::Internal::Util::AnyHash,
            Knockapi::Models::InlineObjectRequest
          )
          ],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(recipients:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
