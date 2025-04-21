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
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedules::BulkCreateParams::Schedule] }

        # @!method initialize(schedules:, request_options: {})
        #   @param schedules [Array<Knockapi::Models::Schedules::BulkCreateParams::Schedule>]
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
          #   The tenant to trigger the workflow for. Triggering with a tenant will use any
          #   tenant-level overrides associated with the tenant object, and all messages
          #   produced from workflow runs will be tagged with the tenant.
          #
          #   @return [String, Knockapi::Models::TenantRequest, nil]
          optional :tenant,
                   union: -> { Knockapi::Models::Schedules::BulkCreateParams::Schedule::Tenant },
                   nil?: true

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

          # The tenant to trigger the workflow for. Triggering with a tenant will use any
          # tenant-level overrides associated with the tenant object, and all messages
          # produced from workflow runs will be tagged with the tenant.
          #
          # @see Knockapi::Models::Schedules::BulkCreateParams::Schedule#tenant
          module Tenant
            extend Knockapi::Internal::Type::Union

            # The unique identifier for the tenant.
            variant String

            # A tenant to be set in the system. You can supply any additional properties on the tenant object.
            variant -> { Knockapi::Models::TenantRequest }

            # @!method self.variants
            #   @return [Array(String, Knockapi::Models::TenantRequest)]
          end
        end
      end
    end
  end
end
