# typed: strong

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The frequency of the schedule.
      sig { returns(Knockapi::ScheduleRepeatRule::Frequency::OrSymbol) }
      attr_accessor :frequency

      # The day of the month to repeat the schedule.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :day_of_month

      # The days of the week to repeat the schedule.
      sig do
        returns(
          T.nilable(T::Array[Knockapi::ScheduleRepeatRule::Day::OrSymbol])
        )
      end
      attr_accessor :days

      # The hour of the day to repeat the schedule.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :hours

      # The interval of the schedule.
      sig { returns(T.nilable(Integer)) }
      attr_reader :interval

      sig { params(interval: Integer).void }
      attr_writer :interval

      # The minute of the hour to repeat the schedule.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :minutes

      # The repeat rule for the schedule.
      sig do
        params(
          _typename: String,
          frequency: Knockapi::ScheduleRepeatRule::Frequency::OrSymbol,
          day_of_month: T.nilable(Integer),
          days:
            T.nilable(T::Array[Knockapi::ScheduleRepeatRule::Day::OrSymbol]),
          hours: T.nilable(Integer),
          interval: Integer,
          minutes: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The typename of the schema.
        _typename:,
        # The frequency of the schedule.
        frequency:,
        # The day of the month to repeat the schedule.
        day_of_month: nil,
        # The days of the week to repeat the schedule.
        days: nil,
        # The hour of the day to repeat the schedule.
        hours: nil,
        # The interval of the schedule.
        interval: nil,
        # The minute of the hour to repeat the schedule.
        minutes: nil
      )
      end

      sig do
        override.returns(
          {
            _typename: String,
            frequency: Knockapi::ScheduleRepeatRule::Frequency::OrSymbol,
            day_of_month: T.nilable(Integer),
            days:
              T.nilable(T::Array[Knockapi::ScheduleRepeatRule::Day::OrSymbol]),
            hours: T.nilable(Integer),
            interval: Integer,
            minutes: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # The frequency of the schedule.
      module Frequency
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::ScheduleRepeatRule::Frequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(:daily, Knockapi::ScheduleRepeatRule::Frequency::TaggedSymbol)
        WEEKLY =
          T.let(:weekly, Knockapi::ScheduleRepeatRule::Frequency::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, Knockapi::ScheduleRepeatRule::Frequency::TaggedSymbol)
        HOURLY =
          T.let(:hourly, Knockapi::ScheduleRepeatRule::Frequency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::ScheduleRepeatRule::Frequency::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # An identifier for a day of the week.
      module Day
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::ScheduleRepeatRule::Day) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MON = T.let(:mon, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        TUE = T.let(:tue, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        WED = T.let(:wed, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        THU = T.let(:thu, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        FRI = T.let(:fri, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        SAT = T.let(:sat, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)
        SUN = T.let(:sun, Knockapi::ScheduleRepeatRule::Day::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::ScheduleRepeatRule::Day::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
