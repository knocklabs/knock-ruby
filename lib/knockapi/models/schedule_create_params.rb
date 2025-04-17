# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#create
    class ScheduleCreateParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients to trigger the workflow for. Can inline identify users, objects,
      #   or use a list of user ids. Cannot exceed 1000 recipients in a single trigger.
      #
      #   @return [Array<String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      required :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ScheduleCreateParams::Recipient] }

      # @!attribute repeats
      #   The repeat rule for the schedule.
      #
      #   @return [Array<Knockapi::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::ScheduleRepeatRule] }

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
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param recipients [Array<String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      #   # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
      #   # @param workflow [String]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param ending_at [Time, nil]
      #   # @param scheduled_at [Time, nil]
      #   # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     recipients:,
      #     repeats:,
      #     workflow:,
      #     data: nil,
      #     ending_at: nil,
      #     scheduled_at: nil,
      #     tenant: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        # The id of the user.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   An identifier for the recipient object.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] collection
          #   The collection the recipient object belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!parse
          #   # @return [String]
          #   attr_writer :collection

          # @!parse
          #   # A reference to a recipient object.
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id: nil, collection: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)]
        #   def self.variants; end
      end
    end
  end
end
