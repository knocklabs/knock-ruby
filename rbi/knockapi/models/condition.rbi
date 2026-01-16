# typed: strong

module Knockapi
  module Models
    class Condition < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Knockapi::Condition, Knockapi::Internal::AnyHash) }

      # The argument value to compare against in the condition.
      sig { returns(T.nilable(String)) }
      attr_accessor :argument

      # The operator to use in the condition evaluation.
      sig { returns(Knockapi::Condition::Operator::OrSymbol) }
      attr_accessor :operator

      # The variable to be evaluated in the condition.
      sig { returns(String) }
      attr_accessor :variable

      # A condition to be evaluated.
      sig do
        params(
          argument: T.nilable(String),
          operator: Knockapi::Condition::Operator::OrSymbol,
          variable: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The argument value to compare against in the condition.
        argument:,
        # The operator to use in the condition evaluation.
        operator:,
        # The variable to be evaluated in the condition.
        variable:
      )
      end

      sig do
        override.returns(
          {
            argument: T.nilable(String),
            operator: Knockapi::Condition::Operator::OrSymbol,
            variable: String
          }
        )
      end
      def to_hash
      end

      # The operator to use in the condition evaluation.
      module Operator
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::Condition::Operator) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EQUAL_TO = T.let(:equal_to, Knockapi::Condition::Operator::TaggedSymbol)
        NOT_EQUAL_TO =
          T.let(:not_equal_to, Knockapi::Condition::Operator::TaggedSymbol)
        GREATER_THAN =
          T.let(:greater_than, Knockapi::Condition::Operator::TaggedSymbol)
        LESS_THAN =
          T.let(:less_than, Knockapi::Condition::Operator::TaggedSymbol)
        GREATER_THAN_OR_EQUAL_TO =
          T.let(
            :greater_than_or_equal_to,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        LESS_THAN_OR_EQUAL_TO =
          T.let(
            :less_than_or_equal_to,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        CONTAINS = T.let(:contains, Knockapi::Condition::Operator::TaggedSymbol)
        NOT_CONTAINS =
          T.let(:not_contains, Knockapi::Condition::Operator::TaggedSymbol)
        EMPTY = T.let(:empty, Knockapi::Condition::Operator::TaggedSymbol)
        NOT_EMPTY =
          T.let(:not_empty, Knockapi::Condition::Operator::TaggedSymbol)
        CONTAINS_ALL =
          T.let(:contains_all, Knockapi::Condition::Operator::TaggedSymbol)
        IS_TIMESTAMP =
          T.let(:is_timestamp, Knockapi::Condition::Operator::TaggedSymbol)
        IS_NOT_TIMESTAMP =
          T.let(:is_not_timestamp, Knockapi::Condition::Operator::TaggedSymbol)
        IS_TIMESTAMP_ON_OR_AFTER =
          T.let(
            :is_timestamp_on_or_after,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        IS_TIMESTAMP_BEFORE =
          T.let(
            :is_timestamp_before,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        IS_TIMESTAMP_BETWEEN =
          T.let(
            :is_timestamp_between,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        IS_AUDIENCE_MEMBER =
          T.let(
            :is_audience_member,
            Knockapi::Condition::Operator::TaggedSymbol
          )
        IS_NOT_AUDIENCE_MEMBER =
          T.let(
            :is_not_audience_member,
            Knockapi::Condition::Operator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Knockapi::Condition::Operator::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
