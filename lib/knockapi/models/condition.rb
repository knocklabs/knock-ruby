# frozen_string_literal: true

module Knockapi
  module Models
    class Condition < Knockapi::BaseModel
      # @!attribute argument
      #
      #   @return [String, nil]
      required :argument, String, nil?: true

      # @!attribute operator
      #
      #   @return [Symbol, Knockapi::Models::Condition::Operator]
      required :operator, enum: -> { Knockapi::Models::Condition::Operator }

      # @!attribute variable
      #
      #   @return [String]
      required :variable, String

      # @!parse
      #   # A condition to be evaluated
      #   #
      #   # @param argument [String, nil]
      #   # @param operator [Symbol, Knockapi::Models::Condition::Operator]
      #   # @param variable [String]
      #   #
      #   def initialize(argument:, operator:, variable:, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # @see Knockapi::Models::Condition#operator
      module Operator
        extend Knockapi::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
