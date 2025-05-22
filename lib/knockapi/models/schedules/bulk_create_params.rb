# frozen_string_literal: true

module Knockapi
  module Models
    module Schedules
      # @see Knockapi::Resources::Schedules::Bulk#create
      class BulkCreateParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute schedules
        #   A list of schedules.
        #
        #   @return [Array<Knockapi::Models::Schedules::BulkCreateParams::Schedule>]
        required :schedules,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Schedules::BulkCreateParams::Schedule] }

        # @!method initialize(schedules:, request_options: {})
        #   @param schedules [Array<Knockapi::Models::Schedules::BulkCreateParams::Schedule>] A list of schedules.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

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
          optional :actor, union: -> { Knockapi::RecipientRequest }, nil?: true

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

          # @!attribute recipient
          #   Specifies a recipient in a request. This can either be a user identifier
          #   (string), an inline user request (object), or an inline object request, which is
          #   determined by the presence of a `collection` property.
          #
          #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
          optional :recipient, union: -> { Knockapi::RecipientRequest }

          # @!attribute repeats
          #   The repeat rule for the schedule.
          #
          #   @return [Array<Knockapi::Models::ScheduleRepeatRule>, nil]
          optional :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule] }

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

          # @!method initialize(workflow:, actor: nil, data: nil, ending_at: nil, recipient: nil, repeats: nil, scheduled_at: nil, tenant: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Schedules::BulkCreateParams::Schedule} for more details.
          #
          #   A schedule represents a recurring workflow execution.
          #
          #   @param workflow [String] The key of the workflow.
          #
          #   @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil] Specifies a recipient in a request. This can either be a user identifier (string
          #
          #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution. There is a 1024 byt
          #
          #   @param ending_at [Time, nil] The ending date and time for the schedule.
          #
          #   @param recipient [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest] Specifies a recipient in a request. This can either be a user identifier (string
          #
          #   @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>] The repeat rule for the schedule.
          #
          #   @param scheduled_at [Time, nil] The starting date and time for the schedule.
          #
          #   @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
        end
      end
    end
  end
end
