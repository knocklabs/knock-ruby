# frozen_string_literal: true

module Knockapi
  module Resources
    class Workflows
      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::WorkflowCancelParams} for more details.
      #
      # When invoked for a workflow using a specific workflow key and cancellation key,
      # will cancel any queued workflow runs associated with that key/cancellation key
      # pair. Can optionally be provided one or more recipients to scope the request to.
      #
      # @overload cancel(key, cancellation_key:, recipients: nil, request_options: {})
      #
      # @param key [String] The key of the workflow to cancel.
      #
      # @param cancellation_key [String] An optional key that is used to reference a specific workflow trigger request wh
      #
      # @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil] A list of recipients to cancel the notification for. If omitted, cancels for all
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::WorkflowCancelParams
      def cancel(key, params)
        parsed, options = Knockapi::WorkflowCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/workflows/%1$s/cancel", key],
          body: parsed,
          model: String,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::WorkflowTriggerParams} for more details.
      #
      # Trigger a workflow (specified by the key) to run for the given recipients, using
      # the parameters provided. Returns an identifier for the workflow run request. All
      # workflow runs are executed asynchronously. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      #
      # @overload trigger(key, recipients:, actor: nil, cancellation_key: nil, data: nil, tenant: nil, request_options: {})
      #
      # @param key [String] Key of the workflow to trigger.
      #
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients to trigger the workflow for. Can inline identify users, objects,
      #
      # @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil] Specifies a recipient in a request. This can either be a user identifier (string
      #
      # @param cancellation_key [String, nil] An optional key that is used to reference a specific workflow trigger request wh
      #
      # @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution. There is a 10MB lim
      #
      # @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::WorkflowTriggerResponse]
      #
      # @see Knockapi::Models::WorkflowTriggerParams
      def trigger(key, params)
        parsed, options = Knockapi::WorkflowTriggerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/workflows/%1$s/trigger", key],
          body: parsed,
          model: Knockapi::Models::WorkflowTriggerResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
