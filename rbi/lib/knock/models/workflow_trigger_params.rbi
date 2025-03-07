# typed: strong

module Knock
  module Models
    class WorkflowTriggerParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig do
        returns(
          T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
        )
      end
      def actor
      end

      sig do
        params(
          _: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
        )
          .returns(
            T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
          )
      end
      def actor=(_)
      end

      sig { returns(T.nilable(String)) }
      def cancellation_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def cancellation_key=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)]
          )
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

      sig { returns(T.nilable(T.any(String, Knock::Models::TenantRequest))) }
      def tenant
      end

      sig do
        params(_: T.nilable(T.any(String, Knock::Models::TenantRequest)))
          .returns(T.nilable(T.any(String, Knock::Models::TenantRequest)))
      end
      def tenant=(_)
      end

      sig do
        params(
          actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        actor: nil,
        cancellation_key: nil,
        data: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
              cancellation_key: T.nilable(String),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
              tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
