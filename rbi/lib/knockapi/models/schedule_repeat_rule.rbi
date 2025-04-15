# typed: strong

module Knockapi
  module Models
    class ScheduleRepeatRule < Knockapi::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol) }
      attr_accessor :frequency

      sig { returns(T.nilable(Integer)) }
      attr_accessor :day_of_month

      sig { returns(T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol])) }
      attr_accessor :days

      sig { returns(T.nilable(Integer)) }
      attr_accessor :hours

      sig { returns(T.nilable(Integer)) }
      attr_reader :interval

      sig { params(interval: Integer).void }
      attr_writer :interval

      sig { returns(T.nilable(Integer)) }
      attr_accessor :minutes

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
      def self.new(
        _typename:,
        frequency:,
        day_of_month: nil,
        days: nil,
        hours: nil,
        interval: nil,
        minutes: nil
      )
      end

      sig do
        override
          .returns(
            {
              _typename: String,
              frequency: Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol,
              day_of_month: T.nilable(Integer),
              days: T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol]),
              hours: T.nilable(Integer),
              interval: Integer,
              minutes: T.nilable(Integer)
            }
          )
      end
      def to_hash; end

      module Frequency
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ScheduleRepeatRule::Frequency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol) }

        DAILY = T.let(:daily, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol)
        WEEKLY = T.let(:weekly, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol)
        MONTHLY = T.let(:monthly, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol)
        HOURLY = T.let(:hourly, Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ScheduleRepeatRule::Frequency::TaggedSymbol]) }
        def self.values; end
      end

      module Day
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ScheduleRepeatRule::Day) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol) }

        MON = T.let(:mon, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        TUE = T.let(:tue, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        WED = T.let(:wed, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        THU = T.let(:thu, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        FRI = T.let(:fri, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        SAT = T.let(:sat, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)
        SUN = T.let(:sun, Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ScheduleRepeatRule::Day::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
