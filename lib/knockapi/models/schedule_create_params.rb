# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#create
    class ScheduleCreateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients to trigger the workflow for. Can inline identify users, objects,
      #   or use a list of user IDs. Limited to 1,000 recipients.
      #
      #   @return [Array<String, Knockapi::InlineIdentifyUserRequest, Knockapi::InlineObjectRequest>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientRequest] }

      # @!attribute repeats
      #   The repeat rule for the schedule.
      #
      #   @return [Array<Knockapi::ScheduleRepeatRule>]
      required :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule] }

      # @!attribute workflow
      #   The key of the workflow.
      #
      #   @return [String]
      required :workflow, String

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

      # @!method initialize(recipients:, repeats:, workflow:, data: nil, ending_at: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ScheduleCreateParams} for more details.
      #
      #   @param recipients [Array<String, Knockapi::InlineIdentifyUserRequest, Knockapi::InlineObjectRequest>] The recipients to trigger the workflow for. Can inline identify users, objects,
      #
      #   @param repeats [Array<Knockapi::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      #   @param workflow [String] The key of the workflow.
      #
      #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution.
      #
      #   @param ending_at [Time, nil] The ending date and time for the schedule.
      #
      #   @param scheduled_at [Time, nil] The starting date and time for the schedule.
      #
      #   @param tenant [String, Knockapi::TenantRequest, nil] An request to set a tenant inline.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
