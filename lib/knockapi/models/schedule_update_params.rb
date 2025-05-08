# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#update
    class ScheduleUpdateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute schedule_ids
      #   A list of schedule IDs.
      #
      #   @return [Array<String>]
      required :schedule_ids, Knockapi::Internal::Type::ArrayOf[String]

      # @!attribute actor
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (ID, collection).
      #
      #   @return [String, Knockapi::RecipientReference::ObjectReference, nil]
      optional :actor, union: -> { Knockapi::RecipientReference }, nil?: true

      # @!attribute data
      #   An optional map of data to pass into the workflow execution.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute ending_at
      #   The ending date and time for the schedule.
      #
      #   @return [Time, nil]
      optional :ending_at, Time, nil?: true

      # @!attribute repeats
      #   The repeat rule for the schedule.
      #
      #   @return [Array<Knockapi::ScheduleRepeatRule>, nil]
      optional :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule] }

      # @!attribute scheduled_at
      #   The starting date and time for the schedule.
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute tenant
      #   An request to set a tenant inline.
      #
      #   @return [String, Knockapi::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::InlineTenantRequest }, nil?: true

      # @!method initialize(schedule_ids:, actor: nil, data: nil, ending_at: nil, repeats: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ScheduleUpdateParams} for more details.
      #
      #   @param schedule_ids [Array<String>] A list of schedule IDs.
      #
      #   @param actor [String, Knockapi::RecipientReference::ObjectReference, nil] A reference to a recipient, either a user identifier (string) or an object refer
      #
      #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution.
      #
      #   @param ending_at [Time, nil] The ending date and time for the schedule.
      #
      #   @param repeats [Array<Knockapi::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      #   @param scheduled_at [Time, nil] The starting date and time for the schedule.
      #
      #   @param tenant [String, Knockapi::TenantRequest, nil] An request to set a tenant inline.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
