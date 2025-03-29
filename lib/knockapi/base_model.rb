# frozen_string_literal: true

module Knockapi
  # @api private
  module Converter
    # rubocop:disable Lint/UnusedMethodArgument

    # @api private
    #
    # @param value [Object]
    #
    # @param state [Hash{Symbol=>Object}] .
    #
    #   @option state [Boolean, :strong] :strictness
    #
    #   @option state [Hash{Symbol=>Object}] :exactness
    #
    #   @option state [Integer] :branched
    #
    # @return [Object]
    def coerce(value, state:) = (raise NotImplementedError)

    # @api private
    #
    # @param value [Object]
    #
    # @return [Object]
    def dump(value)
      case value
      in Array
        value.map { Knockapi::Unknown.dump(_1) }
      in Hash
        value.transform_values { Knockapi::Unknown.dump(_1) }
      in Knockapi::BaseModel
        value.class.dump(value)
      else
        value
      end
    end

    # rubocop:enable Lint/UnusedMethodArgument

    class << self
      # @api private
      #
      # @param spec [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class] .
      #
      #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
      #
      #   @option spec [Proc] :enum
      #
      #   @option spec [Proc] :union
      #
      #   @option spec [Boolean] :"nil?"
      #
      # @return [Proc]
      def type_info(spec)
        case spec
        in Proc
          spec
        in Hash
          type_info(spec.slice(:const, :enum, :union).first&.last)
        in true | false
          -> { Knockapi::BooleanModel }
        in Knockapi::Converter | Class | Symbol
          -> { spec }
        in NilClass | Integer | Float
          -> { spec.class }
        end
      end

      # @api private
      #
      # Based on `target`, transform `value` into `target`, to the extent possible:
      #
      #   1. if the given `value` conforms to `target` already, return the given `value`
      #   2. if it's possible and safe to convert the given `value` to `target`, then the
      #      converted value
      #   3. otherwise, the given `value` unaltered
      #
      #   The coercion process is subject to improvement between minor release versions.
      #   See https://docs.pydantic.dev/latest/concepts/unions/#smart-mode
      #
      # @param target [Knockapi::Converter, Class]
      #
      # @param value [Object]
      #
      # @param state [Hash{Symbol=>Object}] The `strictness` is one of `true`, `false`, or `:strong`. This informs the
      #   coercion strategy when we have to decide between multiple possible conversion
      #   targets:
      #
      #   - `true`: the conversion must be exact, with minimum coercion.
      #   - `false`: the conversion can be approximate, with some coercion.
      #   - `:strong`: the conversion must be exact, with no coercion, and raise an error
      #     if not possible.
      #
      #   The `exactness` is `Hash` with keys being one of `yes`, `no`, or `maybe`. For
      #   any given conversion attempt, the exactness will be updated based on how closely
      #   the value recursively matches the target type:
      #
      #   - `yes`: the value can be converted to the target type with minimum coercion.
      #   - `maybe`: the value can be converted to the target type with some reasonable
      #     coercion.
      #   - `no`: the value cannot be converted to the target type.
      #
      #   See implementation below for more details.
      #
      #   @option state [Boolean, :strong] :strictness
      #
      #   @option state [Hash{Symbol=>Object}] :exactness
      #
      #   @option state [Integer] :branched
      #
      # @return [Object]
      def coerce(target, value, state: {strictness: true, exactness: {yes: 0, no: 0, maybe: 0}, branched: 0})
        strictness, exactness = state.fetch_values(:strictness, :exactness)

        case target
        in Knockapi::Converter
          return target.coerce(value, state: state)
        in Class
          if value.is_a?(target)
            exactness[:yes] += 1
            return value
          end

          case target
          in -> { _1 <= NilClass }
            exactness[value.nil? ? :yes : :maybe] += 1
            return nil
          in -> { _1 <= Integer }
            if value.is_a?(Integer)
              exactness[:yes] += 1
              return value
            elsif strictness == :strong
              message = "no implicit conversion of #{value.class} into #{target.inspect}"
              raise TypeError.new(message)
            else
              Kernel.then do
                return Integer(value).tap { exactness[:maybe] += 1 }
              rescue ArgumentError, TypeError
              end
            end
          in -> { _1 <= Float }
            if value.is_a?(Numeric)
              exactness[:yes] += 1
              return Float(value)
            elsif strictness == :strong
              message = "no implicit conversion of #{value.class} into #{target.inspect}"
              raise TypeError.new(message)
            else
              Kernel.then do
                return Float(value).tap { exactness[:maybe] += 1 }
              rescue ArgumentError, TypeError
              end
            end
          in -> { _1 <= String }
            case value
            in String | Symbol | Numeric
              exactness[value.is_a?(Numeric) ? :maybe : :yes] += 1
              return value.to_s
            else
              if strictness == :strong
                message = "no implicit conversion of #{value.class} into #{target.inspect}"
                raise TypeError.new(message)
              end
            end
          in -> { _1 <= Date || _1 <= Time }
            Kernel.then do
              return target.parse(value).tap { exactness[:yes] += 1 }
            rescue ArgumentError, TypeError => e
              raise e if strictness == :strong
            end
          in -> { _1 <= IO } if value.is_a?(String)
            exactness[:yes] += 1
            return StringIO.new(value.b)
          else
          end
        in Symbol
          if (value.is_a?(Symbol) || value.is_a?(String)) && value.to_sym == target
            exactness[:yes] += 1
            return target
          elsif strictness == :strong
            message = "cannot convert non-matching #{value.class} into #{target.inspect}"
            raise ArgumentError.new(message)
          end
        else
        end

        exactness[:no] += 1
        value
      end

      # @api private
      #
      # @param target [Knockapi::Converter, Class]
      # @param value [Object]
      #
      # @return [Object]
      def dump(target, value)
        target.is_a?(Knockapi::Converter) ? target.dump(value) : Knockapi::Unknown.dump(value)
      end
    end
  end

  # @api private
  #
  # @abstract
  #
  # When we don't know what to expect for the value.
  class Unknown
    extend Knockapi::Converter

    # rubocop:disable Lint/UnusedMethodArgument

    # @param other [Object]
    #
    # @return [Boolean]
    def self.===(other) = true

    # @param other [Object]
    #
    # @return [Boolean]
    def self.==(other) = other.is_a?(Class) && other <= Knockapi::Unknown

    class << self
      # @api private
      #
      # @param value [Object]
      #
      # @param state [Hash{Symbol=>Object}] .
      #
      #   @option state [Boolean, :strong] :strictness
      #
      #   @option state [Hash{Symbol=>Object}] :exactness
      #
      #   @option state [Integer] :branched
      #
      # @return [Object]
      def coerce(value, state:)
        state.fetch(:exactness)[:yes] += 1
        value
      end

      # @!parse
      #   # @api private
      #   #
      #   # @param value [Object]
      #   #
      #   # @return [Object]
      #   def dump(value) = super
    end

    # rubocop:enable Lint/UnusedMethodArgument
  end

  # @api private
  #
  # @abstract
  #
  # Ruby has no Boolean class; this is something for models to refer to.
  class BooleanModel
    extend Knockapi::Converter

    # @param other [Object]
    #
    # @return [Boolean]
    def self.===(other) = other == true || other == false

    # @param other [Object]
    #
    # @return [Boolean]
    def self.==(other) = other.is_a?(Class) && other <= Knockapi::BooleanModel

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

      # @!parse
      #   # @api private
      #   #
      #   # @param value [Boolean, Object]
      #   #
      #   # @return [Boolean, Object]
      #   def dump(value) = super
    end
  end

  # @api private
  #
  # A value from among a specified list of options. OpenAPI enum values map to Ruby
  #   values in the SDK as follows:
  #
  #   1. boolean => true | false
  #   2. integer => Integer
  #   3. float => Float
  #   4. string => Symbol
  #
  #   We can therefore convert string values to Symbols, but can't convert other
  #   values safely.
  module Enum
    include Knockapi::Converter

    # All of the valid Symbol values for this enum.
    #
    # @return [Array<NilClass, Boolean, Integer, Float, Symbol>]
    def values = (@values ||= constants.map { const_get(_1) })

    # @api private
    #
    # Guard against thread safety issues by instantiating `@values`.
    private def finalize! = values

    # @param other [Object]
    #
    # @return [Boolean]
    def ===(other) = values.include?(other)

    # @param other [Object]
    #
    # @return [Boolean]
    def ==(other)
      other.is_a?(Module) && other.singleton_class <= Knockapi::Enum && other.values.to_set == values.to_set
    end

    # @api private
    #
    # Unlike with primitives, `Enum` additionally validates that the value is a member
    #   of the enum.
    #
    # @param value [String, Symbol, Object]
    #
    # @param state [Hash{Symbol=>Object}] .
    #
    #   @option state [Boolean, :strong] :strictness
    #
    #   @option state [Hash{Symbol=>Object}] :exactness
    #
    #   @option state [Integer] :branched
    #
    # @return [Symbol, Object]
    def coerce(value, state:)
      exactness = state.fetch(:exactness)
      val = value.is_a?(String) ? value.to_sym : value

      if values.include?(val)
        exactness[:yes] += 1
        val
      else
        exactness[values.first&.class == val.class ? :maybe : :no] += 1
        value
      end
    end

    # @!parse
    #   # @api private
    #   #
    #   # @param value [Symbol, Object]
    #   #
    #   # @return [Symbol, Object]
    #   def dump(value) = super
  end

  # @api private
  #
  # @example
  #   # `recipient` is a `Knockapi::Models::Recipient`
  #   case recipient
  #   when Knockapi::Models::User
  #     puts(recipient.id)
  #   when Knockapi::Models::Object
  #     puts(recipient._typename)
  #   else
  #     puts(recipient)
  #   end
  module Union
    include Knockapi::Converter

    # @api private
    #
    # All of the specified variant info for this union.
    #
    # @return [Array<Array(Symbol, Proc)>]
    private def known_variants = (@known_variants ||= [])

    # @api private
    #
    # @return [Array<Array(Symbol, Object)>]
    protected def derefed_variants
      @known_variants.map { |key, variant_fn| [key, variant_fn.call] }
    end

    # All of the specified variants for this union.
    #
    # @return [Array<Object>]
    def variants = derefed_variants.map(&:last)

    # @api private
    #
    # @param property [Symbol]
    private def discriminator(property)
      case property
      in Symbol
        @discriminator = property
      end
    end

    # @api private
    #
    # @param key [Symbol, Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
    #
    # @param spec [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class] .
    #
    #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
    #
    #   @option spec [Proc] :enum
    #
    #   @option spec [Proc] :union
    #
    #   @option spec [Boolean] :"nil?"
    private def variant(key, spec = nil)
      variant_info =
        case key
        in Symbol
          [key, Knockapi::Converter.type_info(spec)]
        in Proc | Knockapi::Converter | Class | Hash
          [nil, Knockapi::Converter.type_info(key)]
        end

      known_variants << variant_info
    end

    # @api private
    #
    # @param value [Object]
    #
    # @return [Knockapi::Converter, Class, nil]
    private def resolve_variant(value)
      case [@discriminator, value]
      in [_, Knockapi::BaseModel]
        value.class
      in [Symbol, Hash]
        key = value.fetch(@discriminator) do
          value.fetch(@discriminator.to_s, Knockapi::Util::OMIT)
        end

        return nil if key == Knockapi::Util::OMIT

        key = key.to_sym if key.is_a?(String)
        known_variants.find { |k,| k == key }&.last&.call
      else
        nil
      end
    end

    # rubocop:disable Style/HashEachMethods
    # rubocop:disable Style/CaseEquality

    # @param other [Object]
    #
    # @return [Boolean]
    def ===(other)
      known_variants.any? do |_, variant_fn|
        variant_fn.call === other
      end
    end

    # @param other [Object]
    #
    # @return [Boolean]
    def ==(other)
      other.is_a?(Module) && other.singleton_class <= Knockapi::Union && other.derefed_variants == derefed_variants
    end

    # @api private
    #
    # @param value [Object]
    #
    # @param state [Hash{Symbol=>Object}] .
    #
    #   @option state [Boolean, :strong] :strictness
    #
    #   @option state [Hash{Symbol=>Object}] :exactness
    #
    #   @option state [Integer] :branched
    #
    # @return [Object]
    def coerce(value, state:)
      if (target = resolve_variant(value))
        return Knockapi::Converter.coerce(target, value, state: state)
      end

      strictness = state.fetch(:strictness)
      exactness = state.fetch(:exactness)
      state[:strictness] = strictness == :strong ? true : strictness

      alternatives = []
      known_variants.each do |_, variant_fn|
        target = variant_fn.call
        exact = state[:exactness] = {yes: 0, no: 0, maybe: 0}
        state[:branched] += 1

        coerced = Knockapi::Converter.coerce(target, value, state: state)
        yes, no, maybe = exact.values
        if (no + maybe).zero? || (!strictness && yes.positive?)
          exact.each { exactness[_1] += _2 }
          state[:exactness] = exactness
          return coerced
        elsif maybe.positive?
          alternatives << [[-yes, -maybe, no], exact, coerced]
        end
      end

      case alternatives.sort_by(&:first)
      in []
        exactness[:no] += 1
        if strictness == :strong
          message = "no possible conversion of #{value.class} into a variant of #{target.inspect}"
          raise ArgumentError.new(message)
        end
        value
      in [[_, exact, coerced], *]
        exact.each { exactness[_1] += _2 }
        coerced
      end
        .tap { state[:exactness] = exactness }
    ensure
      state[:strictness] = strictness
    end

    # @api private
    #
    # @param value [Object]
    #
    # @return [Object]
    def dump(value)
      if (target = resolve_variant(value))
        return Knockapi::Converter.dump(target, value)
      end

      known_variants.each do
        target = _2.call
        return Knockapi::Converter.dump(target, value) if target === value
      end

      super
    end

    # rubocop:enable Style/CaseEquality
    # rubocop:enable Style/HashEachMethods
  end

  # @api private
  #
  # @abstract
  #
  # Array of items of a given type.
  class ArrayOf
    include Knockapi::Converter

    # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
    def ===(other) = other.is_a?(Array) && other.all?(item_type)

    # @param other [Object]
    #
    # @return [Boolean]
    def ==(other) = other.is_a?(Knockapi::ArrayOf) && other.nilable? == nilable? && other.item_type == item_type

    # @api private
    #
    # @param value [Enumerable, Object]
    #
    # @param state [Hash{Symbol=>Object}] .
    #
    #   @option state [Boolean, :strong] :strictness
    #
    #   @option state [Hash{Symbol=>Object}] :exactness
    #
    #   @option state [Integer] :branched
    #
    # @return [Array<Object>, Object]
    def coerce(value, state:)
      exactness = state.fetch(:exactness)

      unless value.is_a?(Array)
        exactness[:no] += 1
        return value
      end

      target = item_type
      exactness[:yes] += 1
      value
        .map do |item|
          case [nilable?, item]
          in [true, nil]
            exactness[:yes] += 1
            nil
          else
            Knockapi::Converter.coerce(target, item, state: state)
          end
        end
    end

    # @api private
    #
    # @param value [Enumerable, Object]
    #
    # @return [Array<Object>, Object]
    def dump(value)
      target = item_type
      value.is_a?(Array) ? value.map { Knockapi::Converter.dump(target, _1) } : super
    end

    # @api private
    #
    # @return [Knockapi::Converter, Class]
    protected def item_type = @item_type_fn.call

    # @api private
    #
    # @return [Boolean]
    protected def nilable? = @nilable

    # @api private
    #
    # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
      @item_type_fn = Knockapi::Converter.type_info(type_info || spec)
      @nilable = spec[:nil?]
    end
  end

  # @api private
  #
  # @abstract
  #
  # Hash of items of a given type.
  class HashOf
    include Knockapi::Converter

    # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
    def ==(other) = other.is_a?(Knockapi::HashOf) && other.nilable? == nilable? && other.item_type == item_type

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
              Knockapi::Converter.coerce(target, val, state: state)
            end

          exactness[:no] += 1 unless k.is_a?(Symbol)
          [k, v]
        end
    end

    # @api private
    #
    # @param value [Hash{Object=>Object}, Object]
    #
    # @return [Hash{Symbol=>Object}, Object]
    def dump(value)
      target = item_type
      value.is_a?(Hash) ? value.transform_values { Knockapi::Converter.dump(target, _1) } : super
    end

    # @api private
    #
    # @return [Knockapi::Converter, Class]
    protected def item_type = @item_type_fn.call

    # @api private
    #
    # @return [Boolean]
    protected def nilable? = @nilable

    # @api private
    #
    # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
      @item_type_fn = Knockapi::Converter.type_info(type_info || spec)
      @nilable = spec[:nil?]
    end
  end

  # @abstract
  #
  # @example
  #   # `condition` is a `Knockapi::Models::Condition`
  #   condition => {
  #     argument: argument,
  #     operator: operator,
  #     variable: variable
  #   }
  class BaseModel
    extend Knockapi::Converter

    class << self
      # @api private
      #
      # Assumes superclass fields are totally defined before fields are accessed /
      #   defined on subclasses.
      #
      # @return [Hash{Symbol=>Hash{Symbol=>Object}}]
      def known_fields
        @known_fields ||= (self < Knockapi::BaseModel ? superclass.known_fields.dup : {})
      end

      # @api private
      #
      # @return [Hash{Symbol=>Hash{Symbol=>Object}}]
      def fields
        known_fields.transform_values do |field|
          {**field.except(:type_fn), type: field.fetch(:type_fn).call}
        end
      end

      # @api private
      #
      # @param name_sym [Symbol]
      #
      # @param required [Boolean]
      #
      # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
      private def add_field(name_sym, required:, type_info:, spec:)
        type_fn, info =
          case type_info
          in Proc | Knockapi::Converter | Class
            [Knockapi::Converter.type_info({**spec, union: type_info}), spec]
          in Hash
            [Knockapi::Converter.type_info(type_info), type_info]
          end

        setter = "#{name_sym}="
        api_name = info.fetch(:api_name, name_sym)
        nilable = info[:nil?]
        const = required && !nilable ? info.fetch(:const, Knockapi::Util::OMIT) : Knockapi::Util::OMIT

        [name_sym, setter].each { undef_method(_1) } if known_fields.key?(name_sym)

        known_fields[name_sym] =
          {
            mode: @mode,
            api_name: api_name,
            required: required,
            nilable: nilable,
            const: const,
            type_fn: type_fn
          }

        define_method(setter) { @data.store(name_sym, _1) }

        define_method(name_sym) do
          target = type_fn.call
          value = @data.fetch(name_sym) { const == Knockapi::Util::OMIT ? nil : const }
          state = {strictness: :strong, exactness: {yes: 0, no: 0, maybe: 0}, branched: 0}
          (nilable || !required) && value.nil? ? nil : Knockapi::Converter.coerce(target, value, state: state)
        rescue StandardError
          cls = self.class.name.split("::").last
          message = "Failed to parse #{cls}.#{__method__} from #{value.class} to #{target.inspect}. To get the unparsed API response, use #{cls}[:#{__method__}]."
          raise Knockapi::ConversionError.new(message)
        end
      end

      # @api private
      #
      # @param name_sym [Symbol]
      #
      # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
      def required(name_sym, type_info, spec = {})
        add_field(name_sym, required: true, type_info: type_info, spec: spec)
      end

      # @api private
      #
      # @param name_sym [Symbol]
      #
      # @param type_info [Hash{Symbol=>Object}, Proc, Knockapi::Converter, Class]
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
      def optional(name_sym, type_info, spec = {})
        add_field(name_sym, required: false, type_info: type_info, spec: spec)
      end

      # @api private
      #
      # `request_only` attributes not excluded from `.#coerce` when receiving responses
      #   even if well behaved servers should not send them
      #
      # @param blk [Proc]
      private def request_only(&blk)
        @mode = :dump
        blk.call
      ensure
        @mode = nil
      end

      # @api private
      #
      # `response_only` attributes are omitted from `.#dump` when making requests
      #
      # @param blk [Proc]
      private def response_only(&blk)
        @mode = :coerce
        blk.call
      ensure
        @mode = nil
      end

      # @param other [Object]
      #
      # @return [Boolean]
      def ==(other) = other.is_a?(Class) && other <= Knockapi::BaseModel && other.fields == fields
    end

    # @param other [Object]
    #
    # @return [Boolean]
    def ==(other) = self.class == other.class && @data == other.to_h

    class << self
      # @api private
      #
      # @param value [Knockapi::BaseModel, Hash{Object=>Object}, Object]
      #
      # @param state [Hash{Symbol=>Object}] .
      #
      #   @option state [Boolean, :strong] :strictness
      #
      #   @option state [Hash{Symbol=>Object}] :exactness
      #
      #   @option state [Integer] :branched
      #
      # @return [Knockapi::BaseModel, Object]
      def coerce(value, state:)
        exactness = state.fetch(:exactness)

        if value.is_a?(self.class)
          exactness[:yes] += 1
          return value
        end

        unless (val = Knockapi::Util.coerce_hash(value)).is_a?(Hash)
          exactness[:no] += 1
          return value
        end
        exactness[:yes] += 1

        keys = val.keys.to_set
        instance = new
        data = instance.to_h

        fields.each do |name, field|
          mode, required, target = field.fetch_values(:mode, :required, :type)
          api_name, nilable, const = field.fetch_values(:api_name, :nilable, :const)

          unless val.key?(api_name)
            if const != Knockapi::Util::OMIT
              exactness[:yes] += 1
            elsif required && mode != :dump
              exactness[nilable ? :maybe : :no] += 1
            else
              exactness[:yes] += 1
            end
            next
          end

          item = val.fetch(api_name)
          keys.delete(api_name)

          converted =
            if item.nil? && (nilable || !required)
              exactness[nilable ? :yes : :maybe] += 1
              nil
            else
              coerced = Knockapi::Converter.coerce(target, item, state: state)
              case target
              in Knockapi::Converter | Symbol
                coerced
              else
                item
              end
            end
          data.store(name, converted)
        end

        keys.each { data.store(_1, val.fetch(_1)) }
        instance
      end

      # @api private
      #
      # @param value [Knockapi::BaseModel, Object]
      #
      # @return [Hash{Object=>Object}, Object]
      def dump(value)
        unless (coerced = Knockapi::Util.coerce_hash(value)).is_a?(Hash)
          return super
        end

        acc = {}

        coerced.each do |key, val|
          name = key.is_a?(String) ? key.to_sym : key
          case (field = known_fields[name])
          in nil
            acc.store(name, super(val))
          else
            mode, api_name, type_fn = field.fetch_values(:mode, :api_name, :type_fn)
            case mode
            in :coerce
              next
            else
              target = type_fn.call
              acc.store(api_name, Knockapi::Converter.dump(target, val))
            end
          end
        end

        known_fields.each_value do |field|
          mode, api_name, const = field.fetch_values(:mode, :api_name, :const)
          next if mode == :coerce || acc.key?(api_name) || const == Knockapi::Util::OMIT
          acc.store(api_name, const)
        end

        acc
      end
    end

    # Returns the raw value associated with the given key, if found. Otherwise, nil is
    #   returned.
    #
    #   It is valid to lookup keys that are not in the API spec, for example to access
    #   undocumented features. This method does not parse response data into
    #   higher-level types. Lookup by anything other than a Symbol is an ArgumentError.
    #
    # @param key [Symbol]
    #
    # @return [Object, nil]
    def [](key)
      unless key.instance_of?(Symbol)
        raise ArgumentError.new("Expected symbol key for lookup, got #{key.inspect}")
      end

      @data[key]
    end

    # Returns a Hash of the data underlying this object. O(1)
    #
    #   Keys are Symbols and values are the raw values from the response. The return
    #   value indicates which values were ever set on the object. i.e. there will be a
    #   key in this hash if they ever were, even if the set value was nil.
    #
    #   This method is not recursive. The returned value is shared by the object, so it
    #   should not be mutated.
    #
    # @return [Hash{Symbol=>Object}]
    def to_h = @data

    alias_method :to_hash, :to_h

    # @param keys [Array<Symbol>, nil]
    #
    # @return [Hash{Symbol=>Object}]
    def deconstruct_keys(keys)
      (keys || self.class.known_fields.keys)
        .filter_map do |k|
          unless self.class.known_fields.key?(k)
            next
          end

          [k, public_send(k)]
        end
        .to_h
    end

    # Create a new instance of a model.
    #
    # @param data [Hash{Symbol=>Object}, Knockapi::BaseModel]
    def initialize(data = {})
      case Knockapi::Util.coerce_hash(data)
      in Hash => coerced
        @data = coerced
      else
        raise ArgumentError.new("Expected a #{Hash} or #{Knockapi::BaseModel}, got #{data.inspect}")
      end
    end

    # @return [String]
    def to_s = @data.to_s

    # @return [String]
    def inspect
      rows = self.class.known_fields.keys.map do
        "#{_1}=#{@data.key?(_1) ? public_send(_1) : ''}"
      rescue Knockapi::ConversionError
        "#{_1}=#{@data.fetch(_1)}"
      end
      "#<#{self.class.name}:0x#{object_id.to_s(16)} #{rows.join(' ')}>"
    end
  end
end
