# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The type name of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute frequency
      #   The frequency of the schedule.
      #
      #   @return [Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency]
      required :frequency, enum: -> { Knockapi::Models::ScheduleRepeatRule::Frequency }

      # @!attribute day_of_month
      #   The day of the month to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :day_of_month, Integer, nil?: true

      # @!attribute days
      #   The days of the week to repeat the schedule.
      #
      #   @return [Array<Symbol, Knockapi::Models::ScheduleRepeatRule::Day>, nil]
      optional :days,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::ScheduleRepeatRule::Day] },
               nil?: true

      # @!attribute hours
      #   The hour of the day to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :hours, Integer, nil?: true

      # @!attribute [r] interval
      #   The interval of the schedule.
      #
      #   @return [Integer, nil]
      optional :interval, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :interval

      # @!attribute minutes
      #   The minute of the hour to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :minutes, Integer, nil?: true

      # @!parse
      #   # The repeat rule for the schedule.
      #   #
      #   # @param _typename [String]
      #   # @param frequency [Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency]
      #   # @param day_of_month [Integer, nil]
      #   # @param days [Array<Symbol, Knockapi::Models::ScheduleRepeatRule::Day>, nil]
      #   # @param hours [Integer, nil]
      #   # @param interval [Integer]
      #   # @param minutes [Integer, nil]
      #   #
      #   def initialize(_typename:, frequency:, day_of_month: nil, days: nil, hours: nil, interval: nil, minutes: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # The frequency of the schedule.
      #
      # @see Knockapi::Models::ScheduleRepeatRule#frequency
      module Frequency
        extend Knockapi::Internal::Type::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        HOURLY = :hourly

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # An identifier for a day of the week.
      module Day
        extend Knockapi::Internal::Type::Enum

        MON = :mon
        TUE = :tue
        WED = :wed
        THU = :thu
        FRI = :fri
        SAT = :sat
        SUN = :sun

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
