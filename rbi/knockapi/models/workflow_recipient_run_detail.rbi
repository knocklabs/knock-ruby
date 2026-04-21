# typed: strong

module Knockapi
  module Models
    class WorkflowRecipientRunDetail < Knockapi::Models::WorkflowRecipientRun
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::WorkflowRecipientRunDetail,
            Knockapi::Internal::AnyHash
          )
        end

      # A list of events that occurred during the workflow recipient run.
      sig { returns(T::Array[Knockapi::WorkflowRecipientRunEvent]) }
      attr_accessor :events

      # A single workflow recipient run with its events.
      sig do
        params(
          events: T::Array[Knockapi::WorkflowRecipientRunEvent::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of events that occurred during the workflow recipient run.
        events:
      )
      end

      sig do
        override.returns(
          { events: T::Array[Knockapi::WorkflowRecipientRunEvent] }
        )
      end
      def to_hash
      end
    end
  end
end
