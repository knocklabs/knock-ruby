# frozen_string_literal: true

module Knockapi
  module Models
    class WorkflowRecipientRunEvent < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the event.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute event
      #   The type of event that occurred.
      #
      #   @return [String]
      required :event, String

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute status
      #   Whether the event represents a successful or error state.
      #
      #   @return [Symbol, Knockapi::Models::WorkflowRecipientRunEvent::Status]
      required :status, enum: -> { Knockapi::WorkflowRecipientRunEvent::Status }

      # @!attribute attempt
      #   The attempt number of the workflow recipient run event. Increments for each
      #   retry.
      #
      #   @return [Integer, nil]
      optional :attempt, Integer

      # @!attribute data
      #   Event-specific data associated with the event.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute step_ref
      #   The reference of the workflow step associated with this event.
      #
      #   @return [String, nil]
      optional :step_ref, String, nil?: true

      # @!attribute step_type
      #   The type of workflow step associated with this event.
      #
      #   @return [String, nil]
      optional :step_type, String, nil?: true

      # @!method initialize(id:, _typename:, event:, inserted_at:, status:, attempt: nil, data: nil, step_ref: nil, step_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::WorkflowRecipientRunEvent} for more details.
      #
      #   An event that occurred during a workflow recipient run.
      #
      #   @param id [String] The unique identifier for the event.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param event [String] The type of event that occurred.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param status [Symbol, Knockapi::Models::WorkflowRecipientRunEvent::Status] Whether the event represents a successful or error state.
      #
      #   @param attempt [Integer] The attempt number of the workflow recipient run event. Increments for each retr
      #
      #   @param data [Hash{Symbol=>Object}, nil] Event-specific data associated with the event.
      #
      #   @param step_ref [String, nil] The reference of the workflow step associated with this event.
      #
      #   @param step_type [String, nil] The type of workflow step associated with this event.

      # Whether the event represents a successful or error state.
      #
      # @see Knockapi::Models::WorkflowRecipientRunEvent#status
      module Status
        extend Knockapi::Internal::Type::Enum

        OK = :ok
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
