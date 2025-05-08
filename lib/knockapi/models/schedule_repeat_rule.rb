# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute frequency
      #   The frequency of the schedule.
      #
      #   @return [Symbol, Knockapi::ScheduleRepeatRule::Frequency]
      required :frequency, enum: -> { Knockapi::ScheduleRepeatRule::Frequency }

      # @!attribute day_of_month
      #   The day of the month to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :day_of_month, Integer, nil?: true

      # @!attribute days
      #   The days of the week to repeat the schedule.
      #
      #   @return [Array<Symbol, Knockapi::ScheduleRepeatRule::Day>, nil]
      optional :days,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::ScheduleRepeatRule::Day] },
               nil?: true

      # @!attribute hours
      #   The hour of the day to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :hours, Integer, nil?: true

      # @!attribute interval
      #   The interval of the schedule.
      #
      #   @return [Integer, nil]
      optional :interval, Integer

      # @!attribute minutes
      #   The minute of the hour to repeat the schedule.
      #
      #   @return [Integer, nil]
      optional :minutes, Integer, nil?: true

      # @!method initialize(_typename:, frequency:, day_of_month: nil, days: nil, hours: nil, interval: nil, minutes: nil)
      #   The repeat rule for the schedule.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param frequency [Symbol, Knockapi::ScheduleRepeatRule::Frequency] The frequency of the schedule.
      #
      #   @param day_of_month [Integer, nil] The day of the month to repeat the schedule.
      #
      #   @param days [Array<Symbol, Knockapi::ScheduleRepeatRule::Day>, nil] The days of the week to repeat the schedule.
      #
      #   @param hours [Integer, nil] The hour of the day to repeat the schedule.
      #
      #   @param interval [Integer] The interval of the schedule.
      #
      #   @param minutes [Integer, nil] The minute of the hour to repeat the schedule.

      # The frequency of the schedule.
      #
      # @see Knockapi::ScheduleRepeatRule#frequency
      module Frequency
        extend Knockapi::Internal::Type::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        HOURLY = :hourly

        # @!method self.values
        #   @return [Array<Symbol>]
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
