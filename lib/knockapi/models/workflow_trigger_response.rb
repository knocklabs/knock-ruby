# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#trigger
    class WorkflowTriggerResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute workflow_run_id
      #   The ID of the workflow trigger. This value allows you to track individual
      #   workflow runs associated with this trigger request.
      #
      #   @return [String]
      required :workflow_run_id, String

      # @!parse
      #   # The response from triggering a workflow.
      #   #
      #   # @param workflow_run_id [String]
      #   #
      #   def initialize(workflow_run_id:, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
