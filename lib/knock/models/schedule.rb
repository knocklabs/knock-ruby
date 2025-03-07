# frozen_string_literal: true

module Knock
  module Models
    class Schedule < Knock::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute inserted_at
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A recipient, which is either a user or an object
      #
      #   @return [Knock::Models::User, Knock::Models::Object]
      required :recipient, union: -> { Knock::Models::Recipient }

      # @!attribute repeats
      #
      #   @return [Array<Knock::Models::ScheduleRepeatRule>]
      required :repeats, -> { Knock::ArrayOf[Knock::Models::ScheduleRepeatRule] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute workflow
      #
      #   @return [String]
      required :workflow, String

      # @!attribute [r] _typename
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!parse
      #   # @return [String]
      #   attr_writer :_typename

      # @!attribute actor
      #   A recipient, which is either a user or an object
      #
      #   @return [Knock::Models::User, Knock::Models::Object, nil]
      optional :actor, union: -> { Knock::Models::Recipient }, nil?: true

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knock::HashOf[Knock::Unknown], nil?: true

      # @!attribute last_occurrence_at
      #
      #   @return [Time, nil]
      optional :last_occurrence_at, Time, nil?: true

      # @!attribute next_occurrence_at
      #
      #   @return [Time, nil]
      optional :next_occurrence_at, Time, nil?: true

      # @!attribute tenant
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!parse
      #   # A schedule that represents a recurring workflow execution
      #   #
      #   # @param id [String]
      #   # @param inserted_at [Time]
      #   # @param recipient [Knock::Models::User, Knock::Models::Object]
      #   # @param repeats [Array<Knock::Models::ScheduleRepeatRule>]
      #   # @param updated_at [Time]
      #   # @param workflow [String]
      #   # @param _typename [String]
      #   # @param actor [Knock::Models::User, Knock::Models::Object, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param last_occurrence_at [Time, nil]
      #   # @param next_occurrence_at [Time, nil]
      #   # @param tenant [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     inserted_at:,
      #     recipient:,
      #     repeats:,
      #     updated_at:,
      #     workflow:,
      #     _typename: nil,
      #     actor: nil,
      #     data: nil,
      #     last_occurrence_at: nil,
      #     next_occurrence_at: nil,
      #     tenant: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
