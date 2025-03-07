# typed: strong

module Knock
  module Models
    class WorkflowCancelParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def cancellation_key
      end

      sig { params(_: String).returns(String) }
      def cancellation_key=(_)
      end

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
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(cancellation_key:, recipients: nil, tenant: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              cancellation_key: String,
              recipients: T.nilable(T::Array[String]),
              tenant: T.nilable(String),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
