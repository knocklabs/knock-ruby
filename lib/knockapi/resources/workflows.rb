# frozen_string_literal: true

module Knockapi
  module Resources
    class Workflows
      # When invoked for a workflow using a specific workflow key and cancellation key,
      #   will cancel any queued workflow runs associated with that key/cancellation key
      #   pair. Can optionally be provided one or more recipients to scope the request to.
      #
      # @param key [String] Workflow key
      #
      # @param params [Knockapi::Models::WorkflowCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cancellation_key The cancellation key supplied to the workflow trigger endpoint to use for
      #     cancelling one or more workflow runs.
      #
      #   @option params [Array<String>, nil] :recipients An optional list of recipients to cancel the workflow for using the cancellation
      #     key.
      #
      #   @option params [String, nil] :tenant
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      # @see Knockapi::Models::WorkflowCancelParams
      def cancel(key, params)
        parsed, options = Knockapi::Models::WorkflowCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/workflows/%1$s/cancel", key],
          body: parsed,
          model: String,
          options: options
        )
      end

      # Trigger a workflow specified by the key to run for the given recipients, using
      #   the parameters provided. Returns an identifier for the workflow run request. All
      #   workflow runs are executed asynchronously.
      #
      # @param key [String] Workflow key
      #
      # @param params [Knockapi::Models::WorkflowTriggerParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil] :actor Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @option params [String, nil] :cancellation_key An optional key that is used in the workflow cancellation endpoint to target a
      #     cancellation of any workflow runs associated with this trigger.
      #
      #   @option params [Hash{Symbol=>Object}, nil] :data An optional map of data to be used in the workflow. This data will be available
      #     to the workflow as a map in the `data` field.
      #
      #   @option params [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] :recipients The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
      #     single trigger.
      #
      #   @option params [String, Knockapi::Models::TenantRequest, nil] :tenant An inline tenant request
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::WorkflowTriggerResponse]
      #
      # @see Knockapi::Models::WorkflowTriggerParams
      def trigger(key, params = {})
        parsed, options = Knockapi::Models::WorkflowTriggerParams.dump_request(params)
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
