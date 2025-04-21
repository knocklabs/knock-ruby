# typed: strong

module Knockapi
  module Models
    class WorkflowCancelParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # An optional key that is used to reference a specific workflow trigger request
      # when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
      # request. Must be provided while triggering a workflow in order to enable
      # subsequent cancellation. Should be unique across trigger requests to avoid
      # unintentional cancellations.
      sig { returns(String) }
      attr_accessor :cancellation_key

      # A list of recipients to cancel the notification for. If omitted, cancels for all
      # recipients associated with the cancellation key.
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
          )
        )
      end
      attr_accessor :recipients

      sig do
        params(
          cancellation_key: String,
          recipients: T.nilable(
            T::Array[
              T.any(
                String,
                Knockapi::Models::InlineIdentifyUserRequest,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::InlineObjectRequest
              )
            ]
          ),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cancellation_key:, recipients: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              cancellation_key: String,
              recipients: T.nilable(
                T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
              ),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
