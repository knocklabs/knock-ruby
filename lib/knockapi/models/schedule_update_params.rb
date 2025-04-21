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
      #   Specifies a recipient in a request. This can either be a user identifier
      #   (string), an inline user request (object), or an inline object request, which is
      #   determined by the presence of a `collection` property.
      #
      #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knockapi::Models::ScheduleUpdateParams::Actor }, nil?: true

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

      # @!method initialize(schedule_ids:, actor: nil, data: nil, ending_at: nil, repeats: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #   @param schedule_ids [Array<String>]
      #   @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      #   @param data [Hash{Symbol=>Object}, nil]
      #   @param ending_at [Time, nil]
      #   @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
      #   @param scheduled_at [Time, nil]
      #   @param tenant [String, Knockapi::Models::TenantRequest, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      # Specifies a recipient in a request. This can either be a user identifier
      # (string), an inline user request (object), or an inline object request, which is
      # determined by the presence of a `collection` property.
      module Actor
        extend Knockapi::Internal::Type::Union

        # The ID of the user.
        variant String

        # A set of parameters to inline-identify a user with. Inline identifying the user will ensure that the user is available before the request is executed in Knock. It will perform an upsert for the user you're supplying, replacing any properties specified.
        variant -> { Knockapi::Models::InlineIdentifyUserRequest }

        # A custom object entity which belongs to a collection.
        variant -> { Knockapi::Models::InlineObjectRequest }

        # @!method self.variants
        #   @return [Array(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
      end
    end
  end
end
