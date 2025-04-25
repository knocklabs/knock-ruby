# frozen_string_literal: true

module Knockapi
  module Models
    class Condition < Knockapi::Internal::Type::BaseModel
      # @!attribute argument
      #   The argument value to compare against in the condition.
      #
      #   @return [String, nil]
      required :argument, String, nil?: true

      # @!attribute operator
      #   The operator to use in the condition evaluation.
      #
      #   @return [Symbol, Knockapi::Models::Condition::Operator]
      required :operator, enum: -> { Knockapi::Models::Condition::Operator }

      # @!attribute variable
      #   The variable to be evaluated in the condition.
      #
      #   @return [String]
      required :variable, String

      # @!method initialize(argument:, operator:, variable:)
      #   A condition to be evaluated.
      #
      #   @param argument [String, nil] The argument value to compare against in the condition.
      #
      #   @param operator [Symbol, Knockapi::Models::Condition::Operator] The operator to use in the condition evaluation.
      #
      #   @param variable [String] The variable to be evaluated in the condition.

      # The operator to use in the condition evaluation.
      #
      # @see Knockapi::Models::Condition#operator
      module Operator
        extend Knockapi::Internal::Type::Enum

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
        IS_NOT_AUDIENCE_MEMBER = :is_not_audience_member

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
