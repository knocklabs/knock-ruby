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

      sig { returns(Knockapi::Models::Condition::Operator::OrSymbol) }
      def operator
      end

      sig do
        params(_: Knockapi::Models::Condition::Operator::OrSymbol)
          .returns(Knockapi::Models::Condition::Operator::OrSymbol)
      end
      def operator=(_)
      end

      sig { returns(String) }
      def variable
      end

      sig { params(_: String).returns(String) }
      def variable=(_)
      end

      # A condition to be evaluated
      sig do
        params(
          argument: T.nilable(String),
          operator: Knockapi::Models::Condition::Operator::OrSymbol,
          variable: String
        )
          .returns(T.attached_class)
      end
      def self.new(argument:, operator:, variable:)
      end

      sig do
        override
          .returns(
            {argument: T.nilable(String), operator: Knockapi::Models::Condition::Operator::OrSymbol, variable: String}
          )
      end
      def to_hash
      end

      module Operator
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Condition::Operator) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::Condition::Operator::TaggedSymbol) }

        EQUAL_TO = T.let(:equal_to, Knockapi::Models::Condition::Operator::OrSymbol)
        NOT_EQUAL_TO = T.let(:not_equal_to, Knockapi::Models::Condition::Operator::OrSymbol)
        GREATER_THAN = T.let(:greater_than, Knockapi::Models::Condition::Operator::OrSymbol)
        LESS_THAN = T.let(:less_than, Knockapi::Models::Condition::Operator::OrSymbol)
        GREATER_THAN_OR_EQUAL_TO =
          T.let(:greater_than_or_equal_to, Knockapi::Models::Condition::Operator::OrSymbol)
        LESS_THAN_OR_EQUAL_TO = T.let(:less_than_or_equal_to, Knockapi::Models::Condition::Operator::OrSymbol)
        CONTAINS = T.let(:contains, Knockapi::Models::Condition::Operator::OrSymbol)
        NOT_CONTAINS = T.let(:not_contains, Knockapi::Models::Condition::Operator::OrSymbol)
        EMPTY = T.let(:empty, Knockapi::Models::Condition::Operator::OrSymbol)
        NOT_EMPTY = T.let(:not_empty, Knockapi::Models::Condition::Operator::OrSymbol)
        CONTAINS_ALL = T.let(:contains_all, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_TIMESTAMP = T.let(:is_timestamp, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_NOT_TIMESTAMP = T.let(:is_not_timestamp, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_TIMESTAMP_AFTER = T.let(:is_timestamp_after, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_TIMESTAMP_BEFORE = T.let(:is_timestamp_before, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_TIMESTAMP_BETWEEN = T.let(:is_timestamp_between, Knockapi::Models::Condition::Operator::OrSymbol)
        IS_AUDIENCE_MEMBER = T.let(:is_audience_member, Knockapi::Models::Condition::Operator::OrSymbol)
      end
    end
  end
end
