# frozen_string_literal: true

module Knockapi
  module Resources
    # A workflow run represents an individual execution of a workflow for a specific
    # recipient.
    class WorkflowRecipientRuns
      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::WorkflowRecipientRunListParams} for more details.
      #
      # Returns a paginated list of workflow recipient runs for the current environment.
      #
      # @overload list(after: nil, before: nil, ending_at: nil, has_errors: nil, page_size: nil, recipient: nil, starting_at: nil, status: nil, tenant: nil, workflow: nil, request_options: {})
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param ending_at [Time] Limits the results to workflow recipient runs started before the given date.
      #
      # @param has_errors [Boolean] Limits the results to workflow recipient runs that have errors.
      #
      # @param page_size [Integer] The number of items per page (defaults to 50).
      #
      # @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] Limits the results to workflow recipient runs for the given recipient. Accepts a
      #
      # @param starting_at [Time] Limits the results to workflow recipient runs started after the given date.
      #
      # @param status [Array<Symbol, Knockapi::Models::WorkflowRecipientRunListParams::Status>] Limits the results to workflow recipient runs with the given status.
      #
      # @param tenant [String] Limits the results to workflow recipient runs for the given tenant.
      #
      # @param workflow [String] Limits the results to workflow recipient runs for the given workflow key.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::ItemsCursor<Knockapi::Models::WorkflowRecipientRun>]
      #
      # @see Knockapi::Models::WorkflowRecipientRunListParams
      def list(params = {})
        parsed, options = Knockapi::WorkflowRecipientRunListParams.dump_request(params)
        query = Knockapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/workflow_recipient_runs",
          query: query,
          page: Knockapi::Internal::ItemsCursor,
          model: Knockapi::WorkflowRecipientRun,
          options: options
        )
      end

      # Returns a single workflow recipient run with its associated events.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] The unique identifier for the workflow recipient run (per-recipient).
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::WorkflowRecipientRunDetail]
      #
      # @see Knockapi::Models::WorkflowRecipientRunGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/workflow_recipient_runs/%1$s", id],
          model: Knockapi::WorkflowRecipientRunDetail,
          options: params[:request_options]
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
