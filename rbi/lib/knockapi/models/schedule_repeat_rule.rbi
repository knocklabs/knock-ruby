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

      sig { returns(Symbol) }
      def frequency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def frequency=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def day_of_month
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def day_of_month=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def days
      end

      sig { params(_: T.nilable(T::Array[Symbol])).returns(T.nilable(T::Array[Symbol])) }
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

      sig do
        params(
          _typename: String,
          frequency: Symbol,
          day_of_month: T.nilable(Integer),
          days: T.nilable(T::Array[Symbol]),
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
              frequency: Symbol,
              day_of_month: T.nilable(Integer),
              days: T.nilable(T::Array[Symbol]),
              hours: T.nilable(Integer),
              interval: Integer,
              minutes: T.nilable(Integer)
            }
          )
      end
      def to_hash
      end

      class Frequency < Knockapi::Enum
        abstract!

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        HOURLY = :hourly

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Day < Knockapi::Enum
        abstract!

        MON = :mon
        TUE = :tue
        WED = :wed
        THU = :thu
        FRI = :fri
        SAT = :sat
        SUN = :sun

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
