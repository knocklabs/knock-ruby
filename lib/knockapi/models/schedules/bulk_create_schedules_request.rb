# frozen_string_literal: true

module Knockapi
  module Models
    module Schedules
      class BulkCreateSchedulesRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute schedules
        #   A list of schedules.
        #
        #   @return [Array<Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule>]
        required :schedules,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule] }

        # @!method initialize(schedules:)
        #   MERYL A request to bulk create schedules. Accepts a list of schedules to create.
        #   Each schedule must have a single recipient. The recipients do not have to be
        #   unique.
        #
        #   @param schedules [Array<Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule>]

        class Schedule < Knockapi::Internal::Type::BaseModel
          # @!attribute workflow
          #   The key of the workflow.
          #
          #   @return [String]
          required :workflow, String

          # @!attribute actor
          #   Specifies a recipient in a request. This can either be a user identifier
          #   (string), an inline user request (object), or an inline object request, which is
          #   determined by the presence of a `collection` property.
          #
          #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
          optional :actor, union: -> { Knockapi::Models::RecipientRequest }, nil?: true

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

          # @!attribute recipient
          #   Specifies a recipient in a request. This can either be a user identifier
          #   (string), an inline user request (object), or an inline object request, which is
          #   determined by the presence of a `collection` property.
          #
          #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
          optional :recipient, union: -> { Knockapi::Models::RecipientRequest }

          # @!attribute repeats
          #   The repeat rule for the schedule.
          #
          #   @return [Array<Knockapi::Models::ScheduleRepeatRule>, nil]
          optional :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::ScheduleRepeatRule] }

          # @!attribute scheduled_at
          #   The starting date and time for the schedule.
          #
          #   @return [Time, nil]
          optional :scheduled_at, Time, nil?: true

          # @!attribute tenant
          #   An request to set a tenant inline.
          #
          #   @return [String, Knockapi::Models::TenantRequest, nil]
          optional :tenant, union: -> { Knockapi::Models::InlineTenantRequest }, nil?: true

          # @!method initialize(workflow:, actor: nil, data: nil, ending_at: nil, recipient: nil, repeats: nil, scheduled_at: nil, tenant: nil)
          #   A schedule represents a recurring workflow execution.
          #
          #   @param workflow [String]
          #   @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
          #   @param data [Hash{Symbol=>Object}, nil]
          #   @param ending_at [Time, nil]
          #   @param recipient [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest]
          #   @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
          #   @param scheduled_at [Time, nil]
          #   @param tenant [String, Knockapi::Models::TenantRequest, nil]
        end
      end
    end
  end
end
