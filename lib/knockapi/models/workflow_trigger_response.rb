# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#trigger
    class WorkflowTriggerResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute workflow_run_id
      #   This value allows you to track individual messages associated with this trigger
      #   request.
      #
      #   @return [String]
      required :workflow_run_id, String

      # @!method initialize(workflow_run_id:)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::WorkflowTriggerResponse} for more details.
      #
      #   The response from triggering a workflow.
      #
      #   @param workflow_run_id [String] This value allows you to track individual messages associated with this trigger
    end
  end
end
