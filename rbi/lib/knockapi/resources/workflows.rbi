# typed: strong

module Knockapi
  module Resources
    class Workflows
      # When invoked for a workflow using a specific workflow key and cancellation key,
      #   will cancel any queued workflow runs associated with that key/cancellation key
      #   pair. Can optionally be provided one or more recipients to scope the request to.
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

      # Trigger a workflow specified by the key to run for the given recipients, using
      #   the parameters provided. Returns an identifier for the workflow run request. All
      #   workflow runs are executed asynchronously.
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
