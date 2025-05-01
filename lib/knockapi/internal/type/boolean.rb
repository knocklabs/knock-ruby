# frozen_string_literal: true

module Knockapi
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # Ruby has no Boolean class; this is something for models to refer to.
      class Boolean
        extend Knockapi::Internal::Type::Converter

        private_class_method :new

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.===(other) = other == true || other == false

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.==(other) = other.is_a?(Class) && other <= Knockapi::Internal::Type::Boolean

        class << self
          # @api private
          #
          # @param value [Boolean, Object]
          #
          # @param state [Hash{Symbol=>Object}] .
          #
          #   @option state [Boolean, :strong] :strictness
          #
          #   @option state [Hash{Symbol=>Object}] :exactness
          #
          #   @option state [Integer] :branched
          #
          # @return [Boolean, Object]
          def coerce(value, state:)
            state.fetch(:exactness)[value == true || value == false ? :yes : :no] += 1
            value
          end

          # @!method dump(value, state:)
          #   @api private
          #
          #   @param value [Boolean, Object]
          #
          #   @param state [Hash{Symbol=>Object}] .
          #
          #     @option state [Boolean] :can_retry
          #
          #   @return [Boolean, Object]
        end
      end
    end
  end
end
