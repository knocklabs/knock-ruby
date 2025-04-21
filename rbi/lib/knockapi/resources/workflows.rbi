# typed: strong

module Knockapi
  module Resources
    class Workflows
      # When invoked for a workflow using a specific workflow key and cancellation key,
      # will cancel any queued workflow runs associated with that key/cancellation key
      # pair. Can optionally be provided one or more recipients to scope the request to.
      sig do
        params(
          key: String,
          cancellation_key: String,
          recipients: T.nilable(
            T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def cancel(
        # The key of the workflow to cancel.
        key,
        # An optional key that is used to reference a specific workflow trigger request
        # when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
        # request. Must be provided while triggering a workflow in order to enable
        # subsequent cancellation. Should be unique across trigger requests to avoid
        # unintentional cancellations.
        cancellation_key:,
        # A list of recipients to cancel the notification for. If omitted, cancels for all
        # recipients associated with the cancellation key.
        recipients: nil,
        request_options: {}
      ); end
      # Trigger a workflow (specified by the key) to run for the given recipients, using
      # the parameters provided. Returns an identifier for the workflow run request. All
      # workflow runs are executed asynchronously. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      sig do
        params(
          key: String,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          actor: T.nilable(
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::WorkflowTriggerResponse)
      end
      def trigger(
        # Key of the workflow to trigger.
        key,
        # The recipients to trigger the workflow for. Can inline identify users, objects,
        # or use a list of user IDs. Limited to 1,000 recipients in a single trigger.
        recipients:,
        # Specifies a recipient in a request. This can either be a user identifier
        # (string), an inline user request (object), or an inline object request, which is
        # determined by the presence of a `collection` property.
        actor: nil,
        # An optional key that is used to reference a specific workflow trigger request
        # when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
        # request. Must be provided while triggering a workflow in order to enable
        # subsequent cancellation. Should be unique across trigger requests to avoid
        # unintentional cancellations.
        cancellation_key: nil,
        # An optional map of data to pass into the workflow execution.
        data: nil,
        # An request to set a tenant inline.
        tenant: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
