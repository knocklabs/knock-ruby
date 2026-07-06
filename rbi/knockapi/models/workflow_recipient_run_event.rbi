# typed: strong

module Knockapi
  module Models
    class WorkflowRecipientRunEvent < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::WorkflowRecipientRunEvent,
            Knockapi::Internal::AnyHash
          )
        end

      # The unique identifier for the event.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The type of event that occurred.
      sig { returns(String) }
      attr_accessor :event

      # Timestamp when the resource was created.
      sig { returns(Time) }
      attr_accessor :inserted_at

      # Whether the event represents a successful or error state.
      sig { returns(Knockapi::WorkflowRecipientRunEvent::Status::TaggedSymbol) }
      attr_accessor :status

      # The attempt number of the workflow recipient run event. Increments for each
      # retry.
      sig { returns(T.nilable(Integer)) }
      attr_reader :attempt

      sig { params(attempt: Integer).void }
      attr_writer :attempt

      # Event-specific data associated with the event.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The reference of the workflow step associated with this event.
      sig { returns(T.nilable(String)) }
      attr_accessor :step_ref

      # The type of workflow step associated with this event.
      sig { returns(T.nilable(String)) }
      attr_accessor :step_type

      # An event that occurred during a workflow recipient run.
      sig do
        params(
          id: String,
          _typename: String,
          event: String,
          inserted_at: Time,
          status: Knockapi::WorkflowRecipientRunEvent::Status::OrSymbol,
          attempt: Integer,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          step_ref: T.nilable(String),
          step_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the event.
        id:,
        # The typename of the schema.
        _typename:,
        # The type of event that occurred.
        event:,
        # Timestamp when the resource was created.
        inserted_at:,
        # Whether the event represents a successful or error state.
        status:,
        # The attempt number of the workflow recipient run event. Increments for each
        # retry.
        attempt: nil,
        # Event-specific data associated with the event.
        data: nil,
        # The reference of the workflow step associated with this event.
        step_ref: nil,
        # The type of workflow step associated with this event.
        step_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            event: String,
            inserted_at: Time,
            status: Knockapi::WorkflowRecipientRunEvent::Status::TaggedSymbol,
            attempt: Integer,
            data: T.nilable(T::Hash[Symbol, T.anything]),
            step_ref: T.nilable(String),
            step_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Whether the event represents a successful or error state.
      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::WorkflowRecipientRunEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(:ok, Knockapi::WorkflowRecipientRunEvent::Status::TaggedSymbol)
        ERROR =
          T.let(
            :error,
            Knockapi::WorkflowRecipientRunEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Knockapi::WorkflowRecipientRunEvent::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
