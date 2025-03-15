# typed: strong

module Knockapi
  module Models
    class WorkflowTriggerResponse < Knockapi::BaseModel
      # The ID of the workflow trigger. This value allows you to track individual
      #   workflow runs associated with this trigger request.
      sig { returns(String) }
      def workflow_run_id
      end

      sig { params(_: String).returns(String) }
      def workflow_run_id=(_)
      end

      # The response from triggering a workflow
      sig { params(workflow_run_id: String).returns(T.attached_class) }
      def self.new(workflow_run_id:)
      end

      sig { override.returns({workflow_run_id: String}) }
      def to_hash
      end
    end
  end
end
