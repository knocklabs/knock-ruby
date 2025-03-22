# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleCreateParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute recipients
      #
      #   @return [Array<String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      required :recipients, -> { Knockapi::ArrayOf[union: Knockapi::Models::ScheduleCreateParams::Recipient] }

      # @!attribute repeats
      #
      #   @return [Array<Knockapi::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knockapi::ArrayOf[Knockapi::Models::ScheduleRepeatRule] }

      # @!attribute workflow
      #
      #   @return [String]
      required :workflow, String

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!attribute ending_at
      #
      #   @return [Time, nil]
      optional :ending_at, Time, nil?: true

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

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference }

        class ObjectReference < Knockapi::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)]
        #   def self.variants; end
      end
    end
  end
end
