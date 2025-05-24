# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#create
    class ScheduleCreateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients to set the schedule for. Limited to 100 recipients per request.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientRequest] }

      # @!attribute repeats
      #   The repeat rule for the schedule.
      #
      #   @return [Array<Knockapi::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule] }

      # @!attribute workflow
      #   The key of the workflow.
      #
      #   @return [String]
      required :workflow, String

      # @!attribute data
      #   An optional map of data to pass into the workflow execution. There is a 1024
      #   byte limit on the size of any single string value (with the exception of
      #   [email attachments](/integrations/email/attachments)), and a 10MB limit on the
      #   size of the full `data` payload.
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
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::InlineTenantRequest }, nil?: true

      # @!method initialize(recipients:, repeats:, workflow:, data: nil, ending_at: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ScheduleCreateParams} for more details.
      #
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients to set the schedule for. Limited to 100 recipients per request.
      #
      #   @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      #   @param workflow [String] The key of the workflow.
      #
      #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution. There is a 1024 byt
      #
      #   @param ending_at [Time, nil] The ending date and time for the schedule.
      #
      #   @param scheduled_at [Time, nil] The starting date and time for the schedule.
      #
      #   @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
