# typed: strong

module Knockapi
  module Models
    class WorkflowCancelParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The cancellation key supplied to the workflow trigger endpoint to use for
      #   cancelling one or more workflow runs.
      sig { returns(String) }
      def cancellation_key
      end

      sig { params(_: String).returns(String) }
      def cancellation_key=(_)
      end

      # An optional list of recipients to cancel the workflow for using the cancellation
      #   key.
      sig { returns(T.nilable(T::Array[String])) }
      def recipients
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def recipients=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tenant=(_)
      end

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
