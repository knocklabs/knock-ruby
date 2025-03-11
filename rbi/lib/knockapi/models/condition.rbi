# typed: strong

module Knockapi
  module Models
    class Condition < Knockapi::BaseModel
      sig { returns(T.nilable(String)) }
      def argument
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def argument=(_)
      end

      sig { returns(Symbol) }
      def operator
      end

      sig { params(_: Symbol).returns(Symbol) }
      def operator=(_)
      end

      sig { returns(String) }
      def variable
      end

      sig { params(_: String).returns(String) }
      def variable=(_)
      end

      sig do
        params(argument: T.nilable(String), operator: Symbol, variable: String).returns(T.attached_class)
      end
      def self.new(argument:, operator:, variable:)
      end

      sig { override.returns({argument: T.nilable(String), operator: Symbol, variable: String}) }
      def to_hash
      end

      class Operator < Knockapi::Enum
        abstract!

        EQUAL_TO = :equal_to
        NOT_EQUAL_TO = :not_equal_to
        GREATER_THAN = :greater_than
        LESS_THAN = :less_than
        GREATER_THAN_OR_EQUAL_TO = :greater_than_or_equal_to
        LESS_THAN_OR_EQUAL_TO = :less_than_or_equal_to
        CONTAINS = :contains
        NOT_CONTAINS = :not_contains
        EMPTY = :empty
        NOT_EMPTY = :not_empty
        CONTAINS_ALL = :contains_all
        IS_TIMESTAMP = :is_timestamp
        IS_NOT_TIMESTAMP = :is_not_timestamp
        IS_TIMESTAMP_AFTER = :is_timestamp_after
        IS_TIMESTAMP_BEFORE = :is_timestamp_before
        IS_TIMESTAMP_BETWEEN = :is_timestamp_between
        IS_AUDIENCE_MEMBER = :is_audience_member

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
