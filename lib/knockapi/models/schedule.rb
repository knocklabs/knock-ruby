# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#list
    class Schedule < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the schedule.
      #
      #   @return [String]
      required :id, String

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A recipient of a notification, which is either a user or an object.
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object]
      required :recipient, union: -> { Knockapi::Recipient }

      # @!attribute repeats
      #   The repeat rule for the schedule.
      #
      #   @return [Array<Knockapi::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule] }

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute workflow
      #   The workflow the schedule is applied to.
      #
      #   @return [String]
      required :workflow, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!attribute actor
      #   A recipient of a notification, which is either a user or an object.
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :actor, union: -> { Knockapi::Recipient }, nil?: true

      # @!attribute data
      #   An optional map of data to pass into the workflow execution.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute last_occurrence_at
      #   The last occurrence of the schedule.
      #
      #   @return [Time, nil]
      optional :last_occurrence_at, Time, nil?: true

      # @!attribute next_occurrence_at
      #   The next occurrence of the schedule.
      #
      #   @return [Time, nil]
      optional :next_occurrence_at, Time, nil?: true

      # @!attribute tenant
      #   The tenant to trigger the workflow for. Triggering with a tenant will use any
      #   tenant-level overrides associated with the tenant object, and all messages
      #   produced from workflow runs will be tagged with the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!method initialize(id:, inserted_at:, recipient:, repeats:, updated_at:, workflow:, _typename: nil, actor: nil, data: nil, last_occurrence_at: nil, next_occurrence_at: nil, tenant: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::Schedule} for more details.
      #
      #   A schedule represents a recurring workflow execution.
      #
      #   @param id [String] Unique identifier for the schedule.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param recipient [Knockapi::Models::User, Knockapi::Models::Object] A recipient of a notification, which is either a user or an object.
      #
      #   @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param workflow [String] The workflow the schedule is applied to.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param actor [Knockapi::Models::User, Knockapi::Models::Object, nil] A recipient of a notification, which is either a user or an object.
      #
      #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution.
      #
      #   @param last_occurrence_at [Time, nil] The last occurrence of the schedule.
      #
      #   @param next_occurrence_at [Time, nil] The next occurrence of the schedule.
      #
      #   @param tenant [String, nil] The tenant to trigger the workflow for. Triggering with a tenant will use any te
    end
  end
end
