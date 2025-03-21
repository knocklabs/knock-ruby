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
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(String)
      end
      def cancel(
        # Workflow key
        key,
        # The cancellation key supplied to the workflow trigger endpoint to use for
        #   cancelling one or more workflow runs.
        cancellation_key:,
        # An optional list of recipients to cancel the workflow for using the cancellation
        #   key.
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
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
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::WorkflowTriggerResponse)
      end
      def trigger(
        # Workflow key
        key,
        # Specifies a recipient in a request. This can either be a user identifier
        #   (string), an inline user request (object), or an inline object request, which is
        #   determined by the presence of a `collection` property.
        actor: nil,
        # An optional key that is used in the workflow cancellation endpoint to target a
        #   cancellation of any workflow runs associated with this trigger.
        cancellation_key: nil,
        # An optional map of data to be used in the workflow. This data will be available
        #   to the workflow as a map in the `data` field.
        data: nil,
        # The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
        #   single trigger.
        recipients: nil,
        # An inline tenant request
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
