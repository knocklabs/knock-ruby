# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::WorkflowRecipientRuns#list
    class WorkflowRecipientRun < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the workflow recipient run (per-recipient).
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (ID, collection).
      #
      #   @return [String, Knockapi::Models::RecipientReference::ObjectReference]
      required :recipient, union: -> { Knockapi::RecipientReference }

      # @!attribute status
      #   The current status of the workflow recipient run. One of `queued`, `processing`,
      #   `paused`, `completed`, or `cancelled`.
      #
      #   @return [Symbol, Knockapi::Models::WorkflowRecipientRun::Status]
      required :status, enum: -> { Knockapi::WorkflowRecipientRun::Status }

      # @!attribute trigger_source
      #   Describes how the workflow was triggered.
      #
      #   @return [Knockapi::Models::WorkflowRecipientRun::TriggerSource]
      required :trigger_source, -> { Knockapi::WorkflowRecipientRun::TriggerSource }

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute workflow
      #   The key of the workflow that was executed.
      #
      #   @return [String]
      required :workflow, String

      # @!attribute workflow_run_id
      #   The identifier for the top-level workflow run shared across all recipients in a
      #   single trigger.
      #
      #   @return [String]
      required :workflow_run_id, String

      # @!attribute actor
      #   A recipient of a notification, which is either a user or an object.
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :actor, union: -> { Knockapi::Recipient }, nil?: true

      # @!attribute error_count
      #   The number of errors encountered during the workflow recipient run.
      #
      #   @return [Integer, nil]
      optional :error_count, Integer

      # @!attribute tenant
      #   The tenant associated with the workflow recipient run.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!method initialize(id:, _typename:, inserted_at:, recipient:, status:, trigger_source:, updated_at:, workflow:, workflow_run_id:, actor: nil, error_count: nil, tenant: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::WorkflowRecipientRun} for more details.
      #
      #   A workflow recipient run represents an individual execution of a workflow for a
      #   specific recipient.
      #
      #   @param id [String] The unique identifier for the workflow recipient run (per-recipient).
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] A reference to a recipient, either a user identifier (string) or an object refer
      #
      #   @param status [Symbol, Knockapi::Models::WorkflowRecipientRun::Status] The current status of the workflow recipient run. One of `queued`, `processing`,
      #
      #   @param trigger_source [Knockapi::Models::WorkflowRecipientRun::TriggerSource] Describes how the workflow was triggered.
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param workflow [String] The key of the workflow that was executed.
      #
      #   @param workflow_run_id [String] The identifier for the top-level workflow run shared across all recipients in a
      #
      #   @param actor [Knockapi::Models::User, Knockapi::Models::Object, nil] A recipient of a notification, which is either a user or an object.
      #
      #   @param error_count [Integer] The number of errors encountered during the workflow recipient run.
      #
      #   @param tenant [String, nil] The tenant associated with the workflow recipient run.

      # The current status of the workflow recipient run. One of `queued`, `processing`,
      # `paused`, `completed`, or `cancelled`.
      #
      # @see Knockapi::Models::WorkflowRecipientRun#status
      module Status
        extend Knockapi::Internal::Type::Enum

        QUEUED = :queued
        PROCESSING = :processing
        PAUSED = :paused
        COMPLETED = :completed
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Knockapi::Models::WorkflowRecipientRun#trigger_source
      class TriggerSource < Knockapi::Internal::Type::BaseModel
        # @!attribute type
        #   The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`,
        #   `workflow_step`, `integration`, or `rehearsal`.
        #
        #   @return [Symbol, Knockapi::Models::WorkflowRecipientRun::TriggerSource::Type]
        required :type, enum: -> { Knockapi::WorkflowRecipientRun::TriggerSource::Type }

        # @!attribute audience_key
        #   The key of the audience that triggered the workflow.
        #
        #   @return [String, nil]
        optional :audience_key, String, nil?: true

        # @!attribute cancellation_key
        #   The cancellation key provided when the workflow was triggered via the API.
        #
        #   @return [String, nil]
        optional :cancellation_key, String, nil?: true

        # @!attribute schedule_id
        #   The ID of the schedule that triggered the workflow.
        #
        #   @return [String, nil]
        optional :schedule_id, String, nil?: true

        # @!method initialize(type:, audience_key: nil, cancellation_key: nil, schedule_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::WorkflowRecipientRun::TriggerSource} for more details.
        #
        #   Describes how the workflow was triggered.
        #
        #   @param type [Symbol, Knockapi::Models::WorkflowRecipientRun::TriggerSource::Type] The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`, `
        #
        #   @param audience_key [String, nil] The key of the audience that triggered the workflow.
        #
        #   @param cancellation_key [String, nil] The cancellation key provided when the workflow was triggered via the API.
        #
        #   @param schedule_id [String, nil] The ID of the schedule that triggered the workflow.

        # The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`,
        # `workflow_step`, `integration`, or `rehearsal`.
        #
        # @see Knockapi::Models::WorkflowRecipientRun::TriggerSource#type
        module Type
          extend Knockapi::Internal::Type::Enum

          API = :api
          AUDIENCE = :audience
          SCHEDULE = :schedule
          BROADCAST = :broadcast
          WORKFLOW_STEP = :workflow_step
          INTEGRATION = :integration
          REHEARSAL = :rehearsal

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
