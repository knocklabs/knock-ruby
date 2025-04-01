# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleUpdateParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute schedule_ids
      #
      #   @return [Array<String>]
      required :schedule_ids, Knockapi::ArrayOf[String]

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knockapi::Models::RecipientRequest }, nil?: true

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!attribute ending_at
      #
      #   @return [Time, nil]
      optional :ending_at, Time, nil?: true

      # @!attribute [r] repeats
      #
      #   @return [Array<Knockapi::Models::ScheduleRepeatRule>, nil]
      optional :repeats, -> { Knockapi::ArrayOf[Knockapi::Models::ScheduleRepeatRule] }

      # @!parse
      #   # @return [Array<Knockapi::Models::ScheduleRepeatRule>]
      #   attr_writer :repeats

      # @!attribute scheduled_at
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute tenant
      #   An inline tenant request
      #
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param schedule_ids [Array<String>]
      #   # @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param ending_at [Time, nil]
      #   # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
      #   # @param scheduled_at [Time, nil]
      #   # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
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

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
