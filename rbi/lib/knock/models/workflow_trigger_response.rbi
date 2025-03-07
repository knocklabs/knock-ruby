# typed: strong

module Knock
  module Models
    class WorkflowTriggerResponse < Knock::BaseModel
      sig { returns(String) }
      def workflow_run_id
      end

      sig { params(_: String).returns(String) }
      def workflow_run_id=(_)
      end

      sig { params(workflow_run_id: String).void }
      def initialize(workflow_run_id:)
      end

      sig { override.returns({workflow_run_id: String}) }
      def to_hash
      end
    end
  end
end
