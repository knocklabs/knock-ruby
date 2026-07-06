# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::WorkflowRecipientRuns#get
    class WorkflowRecipientRunDetail < Knockapi::Models::WorkflowRecipientRun
      # @!attribute events
      #   A list of events that occurred during the workflow recipient run.
      #
      #   @return [Array<Knockapi::Models::WorkflowRecipientRunEvent>]
      required :events, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::WorkflowRecipientRunEvent] }

      # @!method initialize(events:)
      #   A single workflow recipient run with its events.
      #
      #   @param events [Array<Knockapi::Models::WorkflowRecipientRunEvent>] A list of events that occurred during the workflow recipient run.
    end
  end
end
