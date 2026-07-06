# typed: strong

module Knockapi
  module Models
    class WorkflowRecipientRun < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::WorkflowRecipientRun, Knockapi::Internal::AnyHash)
        end

      # The unique identifier for the workflow recipient run (per-recipient).
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # Timestamp when the resource was created.
      sig { returns(Time) }
      attr_accessor :inserted_at

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig { returns(Knockapi::RecipientReference::Variants) }
      attr_accessor :recipient

      # The current status of the workflow recipient run. One of `queued`, `processing`,
      # `paused`, `completed`, or `cancelled`.
      sig { returns(Knockapi::WorkflowRecipientRun::Status::TaggedSymbol) }
      attr_accessor :status

      # Describes how the workflow was triggered.
      sig { returns(Knockapi::WorkflowRecipientRun::TriggerSource) }
      attr_reader :trigger_source

      sig do
        params(
          trigger_source: Knockapi::WorkflowRecipientRun::TriggerSource::OrHash
        ).void
      end
      attr_writer :trigger_source

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The key of the workflow that was executed.
      sig { returns(String) }
      attr_accessor :workflow

      # The identifier for the top-level workflow run shared across all recipients in a
      # single trigger.
      sig { returns(String) }
      attr_accessor :workflow_run_id

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig { returns(T.nilable(Knockapi::RecipientReference::Variants)) }
      attr_accessor :actor

      # The number of errors encountered during the workflow recipient run.
      sig { returns(T.nilable(Integer)) }
      attr_reader :error_count

      sig { params(error_count: Integer).void }
      attr_writer :error_count

      # The tenant associated with the workflow recipient run.
      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      # A workflow recipient run represents an individual execution of a workflow for a
      # specific recipient.
      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient:
            T.any(
              String,
              Knockapi::RecipientReference::ObjectReference::OrHash
            ),
          status: Knockapi::WorkflowRecipientRun::Status::OrSymbol,
          trigger_source: Knockapi::WorkflowRecipientRun::TriggerSource::OrHash,
          updated_at: Time,
          workflow: String,
          workflow_run_id: String,
          actor:
            T.nilable(
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ),
          error_count: Integer,
          tenant: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the workflow recipient run (per-recipient).
        id:,
        # The typename of the schema.
        _typename:,
        # Timestamp when the resource was created.
        inserted_at:,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        recipient:,
        # The current status of the workflow recipient run. One of `queued`, `processing`,
        # `paused`, `completed`, or `cancelled`.
        status:,
        # Describes how the workflow was triggered.
        trigger_source:,
        # The timestamp when the resource was last updated.
        updated_at:,
        # The key of the workflow that was executed.
        workflow:,
        # The identifier for the top-level workflow run shared across all recipients in a
        # single trigger.
        workflow_run_id:,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        actor: nil,
        # The number of errors encountered during the workflow recipient run.
        error_count: nil,
        # The tenant associated with the workflow recipient run.
        tenant: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            inserted_at: Time,
            recipient: Knockapi::RecipientReference::Variants,
            status: Knockapi::WorkflowRecipientRun::Status::TaggedSymbol,
            trigger_source: Knockapi::WorkflowRecipientRun::TriggerSource,
            updated_at: Time,
            workflow: String,
            workflow_run_id: String,
            actor: T.nilable(Knockapi::RecipientReference::Variants),
            error_count: Integer,
            tenant: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The current status of the workflow recipient run. One of `queued`, `processing`,
      # `paused`, `completed`, or `cancelled`.
      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::WorkflowRecipientRun::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(:queued, Knockapi::WorkflowRecipientRun::Status::TaggedSymbol)
        PROCESSING =
          T.let(
            :processing,
            Knockapi::WorkflowRecipientRun::Status::TaggedSymbol
          )
        PAUSED =
          T.let(:paused, Knockapi::WorkflowRecipientRun::Status::TaggedSymbol)
        COMPLETED =
          T.let(
            :completed,
            Knockapi::WorkflowRecipientRun::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Knockapi::WorkflowRecipientRun::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Knockapi::WorkflowRecipientRun::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class TriggerSource < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::WorkflowRecipientRun::TriggerSource,
              Knockapi::Internal::AnyHash
            )
          end

        # The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`,
        # `workflow_step`, `integration`, or `rehearsal`.
        sig do
          returns(
            Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The key of the audience that triggered the workflow.
        sig { returns(T.nilable(String)) }
        attr_accessor :audience_key

        # The cancellation key provided when the workflow was triggered via the API.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_key

        # The ID of the schedule that triggered the workflow.
        sig { returns(T.nilable(String)) }
        attr_accessor :schedule_id

        # Describes how the workflow was triggered.
        sig do
          params(
            type: Knockapi::WorkflowRecipientRun::TriggerSource::Type::OrSymbol,
            audience_key: T.nilable(String),
            cancellation_key: T.nilable(String),
            schedule_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`,
          # `workflow_step`, `integration`, or `rehearsal`.
          type:,
          # The key of the audience that triggered the workflow.
          audience_key: nil,
          # The cancellation key provided when the workflow was triggered via the API.
          cancellation_key: nil,
          # The ID of the schedule that triggered the workflow.
          schedule_id: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol,
              audience_key: T.nilable(String),
              cancellation_key: T.nilable(String),
              schedule_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type of trigger source. One of `api`, `audience`, `schedule`, `broadcast`,
        # `workflow_step`, `integration`, or `rehearsal`.
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Knockapi::WorkflowRecipientRun::TriggerSource::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API =
            T.let(
              :api,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :audience,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          SCHEDULE =
            T.let(
              :schedule,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          BROADCAST =
            T.let(
              :broadcast,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          WORKFLOW_STEP =
            T.let(
              :workflow_step,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :integration,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )
          REHEARSAL =
            T.let(
              :rehearsal,
              Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::WorkflowRecipientRun::TriggerSource::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
