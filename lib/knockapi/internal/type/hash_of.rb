# frozen_string_literal: true

module Knockapi
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # @generic Elem
      #
      # Hash of items of a given type.
      class HashOf
        include Knockapi::Internal::Type::Converter

        # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        def self.[](type_info, spec = {}) = new(type_info, spec)

        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other)
          type = item_type
          case other
          in Hash
            other.all? do |key, val|
              case [key, val]
              in [Symbol | String, ^type]
                true
              else
                false
              end
            end
          else
            false
          end
        end

        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Layout/LineLength
          other.is_a?(Knockapi::Internal::Type::HashOf) && other.nilable? == nilable? && other.item_type == item_type
          # rubocop:enable Layout/LineLength
        end

        # @api private
        #
        # @param value [Hash{Object=>Object}, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean, :strong] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Integer] :branched
        #
        # @return [Hash{Symbol=>Object}, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)

          unless value.is_a?(Hash)
            exactness[:no] += 1
            return value
          end

          target = item_type
          exactness[:yes] += 1
          value
            .to_h do |key, val|
              k = key.is_a?(String) ? key.to_sym : key
              v =
                case [nilable?, val]
                in [true, nil]
                  exactness[:yes] += 1
                  nil
                else
                  Knockapi::Internal::Type::Converter.coerce(target, val, state: state)
                end

              exactness[:no] += 1 unless k.is_a?(Symbol)
              [k, v]
            end
        end

        # @api private
        #
        # @param value [Hash{Object=>Object}, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Hash{Symbol=>Object}, Object]
        def dump(value, state:)
          target = item_type
          if value.is_a?(Hash)
            value.transform_values do
              Knockapi::Internal::Type::Converter.dump(target, _1, state: state)
            end
          else
            super
          end
        end

        # @api private
        #
        # @return [generic<Elem>]
        protected def item_type = @item_type_fn.call

        # @api private
        #
        # @return [Boolean]
        protected def nilable? = @nilable

        # @api private
        #
        # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        def initialize(type_info, spec = {})
          @item_type_fn = Knockapi::Internal::Type::Converter.type_info(type_info || spec)
          @nilable = spec[:nil?]
        end
      end
    end
  end
end
