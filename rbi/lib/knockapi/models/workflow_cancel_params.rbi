# typed: strong

module Knockapi
  module Models
    class WorkflowCancelParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cancellation key provided during the initial notify call. If used in a
      # cancel request, will cancel the notification for the recipients specified in the
      # cancel request.
      sig { returns(String) }
      attr_accessor :cancellation_key

      # A list of recipients to cancel the notification for. If omitted, cancels for all
      # recipients associated with the cancellation key.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :recipients

      # The unique identifier for the tenant.
      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      sig do
        params(
          cancellation_key: String,
          recipients: T.nilable(T::Array[String]),
          tenant: T.nilable(String),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cancellation_key:, recipients: nil, tenant: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              cancellation_key: String,
              recipients: T.nilable(T::Array[String]),
              tenant: T.nilable(String),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
