# typed: strong

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol) }
      def frequency
      end

      sig do
        params(_: Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
          .returns(Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
      end
      def frequency=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def day_of_month
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def day_of_month=(_)
      end

      sig { returns(T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol])) }
      def days
      end

      sig do
        params(_: T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol]))
          .returns(T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol]))
      end
      def days=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def hours
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def hours=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def interval
      end

      sig { params(_: Integer).returns(Integer) }
      def interval=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def minutes
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def minutes=(_)
      end

      # A schedule repeat rule
      sig do
        params(
          _typename: String,
          frequency: Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol,
          day_of_month: T.nilable(Integer),
          days: T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol]),
          hours: T.nilable(Integer),
          interval: Integer,
          minutes: T.nilable(Integer)
        )
          .returns(T.attached_class)
      end
      def self.new(_typename:, frequency:, day_of_month: nil, days: nil, hours: nil, interval: nil, minutes: nil)
      end

      sig do
        override
          .returns(
            {
              _typename: String,
              frequency: Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol,
              day_of_month: T.nilable(Integer),
              days: T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol]),
              hours: T.nilable(Integer),
              interval: Integer,
              minutes: T.nilable(Integer)
            }
          )
      end
      def to_hash
      end

      module Frequency
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol) }

        DAILY = T.let(:daily, Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
        WEEKLY = T.let(:weekly, Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
        MONTHLY = T.let(:monthly, Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
        HOURLY = T.let(:hourly, Knockapi::Models::ScheduleRepeatRule::Frequency::OrSymbol)
      end

      module Day
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ScheduleRepeatRule::Day) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol) }

        MON = T.let(:mon, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        TUE = T.let(:tue, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        WED = T.let(:wed, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        THU = T.let(:thu, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        FRI = T.let(:fri, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        SAT = T.let(:sat, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
        SUN = T.let(:sun, Knockapi::Models::ScheduleRepeatRule::Day::OrSymbol)
      end
    end
  end
end
