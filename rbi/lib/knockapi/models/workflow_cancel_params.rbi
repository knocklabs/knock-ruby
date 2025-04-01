# typed: strong

module Knockapi
  module Models
    class WorkflowCancelParams < Knockapi::BaseModel
      extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The cancellation key supplied to the workflow trigger endpoint to use for
      #   cancelling one or more workflow runs.
      sig { returns(String) }
      attr_accessor :cancellation_key

      # An optional list of recipients to cancel the workflow for using the cancellation
      #   key.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :recipients

      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      sig do
        params(
          cancellation_key: String,
          recipients: T.nilable(T::Array[String]),
          tenant: T.nilable(String),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cancellation_key:, recipients: nil, tenant: nil, request_options: {})
      end

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
      def to_hash
      end
    end
  end
end
