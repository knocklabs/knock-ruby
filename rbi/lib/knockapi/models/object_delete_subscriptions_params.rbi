# typed: strong

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The recipients of the subscription.
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
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(recipients:, request_options: {}); end

      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      # Specifies a recipient in a request. This can either be a user identifier
      # (string), an inline user request (object), or an inline object request, which is
      # determined by the presence of a `collection` property.
      module Recipient
        extend Knockapi::Internal::Type::Union

        sig do
          override
            .returns([String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest])
        end
        def self.variants; end
      end
    end
  end
end
