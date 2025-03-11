# typed: strong

module Knockapi
  module Resources
    class Workflows
      sig do
        params(
          key: String,
          cancellation_key: String,
          recipients: T.nilable(T::Array[String]),
          tenant: T.nilable(String),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def cancel(key, cancellation_key:, recipients: nil, tenant: nil, request_options: {})
      end

      sig do
        params(
          key: String,
          actor: T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          ),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::WorkflowTriggerResponse)
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

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
