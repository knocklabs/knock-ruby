# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::BaseModel
      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute frequency
      #
      #   @return [Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency]
      required :frequency, enum: -> { Knockapi::Models::ScheduleRepeatRule::Frequency }

      # @!attribute day_of_month
      #
      #   @return [Integer, nil]
      optional :day_of_month, Integer, nil?: true

      # @!attribute days
      #
      #   @return [Array<Symbol, Knockapi::Models::ScheduleRepeatRule::Day>, nil]
      optional :days, -> { Knockapi::ArrayOf[enum: Knockapi::Models::ScheduleRepeatRule::Day] }, nil?: true

      # @!attribute hours
      #
      #   @return [Integer, nil]
      optional :hours, Integer, nil?: true

      # @!attribute [r] interval
      #
      #   @return [Integer, nil]
      optional :interval, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :interval

      # @!attribute minutes
      #
      #   @return [Integer, nil]
      optional :minutes, Integer, nil?: true

      # @!parse
      #   # A schedule repeat rule
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

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      module Frequency
        extend Knockapi::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        HOURLY = :hourly

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      module Day
        extend Knockapi::Enum

        MON = :mon
        TUE = :tue
        WED = :wed
        THU = :thu
        FRI = :fri
        SAT = :sat
        SUN = :sun

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
