# typed: strong

module Knock
  module Resources
    class Workflows
      sig do
        params(
          key: String,
          cancellation_key: String,
          recipients: T.nilable(T::Array[String]),
          tenant: T.nilable(String),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def cancel(key, cancellation_key:, recipients: nil, tenant: nil, request_options: {})
      end

      sig do
        params(
          key: String,
          actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::WorkflowTriggerResponse)
      end
      def trigger(
        key,
        actor: nil,
        cancellation_key: nil,
        data: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
