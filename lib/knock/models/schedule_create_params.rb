# frozen_string_literal: true

module Knock
  module Models
    class ScheduleCreateParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute recipients
      #
      #   @return [Array<String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      required :recipients, -> { Knock::ArrayOf[union: Knock::Models::ScheduleCreateParams::Recipient] }

      # @!attribute repeats
      #
      #   @return [Array<Knock::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knock::ArrayOf[Knock::Models::ScheduleRepeatRule] }

      # @!attribute workflow
      #
      #   @return [String]
      required :workflow, String

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knock::HashOf[Knock::Unknown], nil?: true

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
      #   @return [String, Knock::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knock::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param recipients [Array<String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      #   # @param repeats [Array<Knock::Models::ScheduleRepeatRule>]
      #   # @param workflow [String]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param ending_at [Time, nil]
      #   # @param scheduled_at [Time, nil]
      #   # @param tenant [String, Knock::Models::TenantRequest, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
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

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knock::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knock::Models::ScheduleCreateParams::Recipient::ObjectReference }

        class ObjectReference < Knock::BaseModel
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

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
