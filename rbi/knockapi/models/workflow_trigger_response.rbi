# typed: strong

module Knockapi
  module Models
    class WorkflowTriggerResponse < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::Models::WorkflowTriggerResponse,
            Knockapi::Internal::AnyHash
          )
        end

      # This value allows you to track individual messages associated with this trigger
      # request.
      sig { returns(String) }
      attr_accessor :workflow_run_id

      # The response from triggering a workflow.
      sig { params(workflow_run_id: String).returns(T.attached_class) }
      def self.new(
        # This value allows you to track individual messages associated with this trigger
        # request.
        workflow_run_id:
      )
      end

      sig { override.returns({ workflow_run_id: String }) }
      def to_hash
      end
    end
  end
end
