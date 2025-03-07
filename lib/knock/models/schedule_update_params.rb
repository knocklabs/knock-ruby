# frozen_string_literal: true

module Knock
  module Models
    class ScheduleUpdateParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute schedule_ids
      #
      #   @return [Array<String>]
      required :schedule_ids, Knock::ArrayOf[String]

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @return [String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knock::Models::RecipientRequest }, nil?: true

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knock::HashOf[Knock::Unknown], nil?: true

      # @!attribute ending_at
      #
      #   @return [Time, nil]
      optional :ending_at, Time, nil?: true

      # @!attribute [r] repeats
      #
      #   @return [Array<Knock::Models::ScheduleRepeatRule>, nil]
      optional :repeats, -> { Knock::ArrayOf[Knock::Models::ScheduleRepeatRule] }

      # @!parse
      #   # @return [Array<Knock::Models::ScheduleRepeatRule>]
      #   attr_writer :repeats

      # @!attribute scheduled_at
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute tenant
      #   An inline tenant request
      #
      #   @return [String, Knock::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knock::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param schedule_ids [Array<String>]
      #   # @param actor [String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param ending_at [Time, nil]
      #   # @param repeats [Array<Knock::Models::ScheduleRepeatRule>]
      #   # @param scheduled_at [Time, nil]
      #   # @param tenant [String, Knock::Models::TenantRequest, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     schedule_ids:,
      #     actor: nil,
      #     data: nil,
      #     ending_at: nil,
      #     repeats: nil,
      #     scheduled_at: nil,
      #     tenant: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
