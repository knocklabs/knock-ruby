# frozen_string_literal: true

module Knockapi
  module Resources
    class Workflows
      # Issues a cancellation request to inflight workflow runs
      #
      # @overload cancel(key, cancellation_key:, recipients: nil, tenant: nil, request_options: {})
      #
      # @param key [String]
      # @param cancellation_key [String]
      # @param recipients [Array<String>, nil]
      # @param tenant [String, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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

      # Triggers a workflow
      #
      # @overload trigger(key, actor: nil, cancellation_key: nil, data: nil, recipients: nil, tenant: nil, request_options: {})
      #
      # @param key [String]
      # @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      # @param cancellation_key [String, nil]
      # @param data [Hash{Symbol=>String}, nil]
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
