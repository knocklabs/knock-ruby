# typed: strong

module Knockapi
  module Internal
    module Type
      # @api private
      #
      # Hash of items of a given type.
      class HashOf
        include Knockapi::Internal::Type::Converter

        abstract!
        final!

        Elem = type_member(:out)

        sig(:final) do
          params(
            type_info: T.any(
              Knockapi::Internal::AnyHash,
              T.proc.returns(Knockapi::Internal::Type::Converter::Input),
              Knockapi::Internal::Type::Converter::Input
            ),
            spec: Knockapi::Internal::AnyHash
          )
            .returns(T.attached_class)
        end
        def self.[](type_info, spec = {}); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ===(other); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ==(other); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Hash[T.anything, T.anything], T.anything),
              state: Knockapi::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(Knockapi::Internal::AnyHash, T.anything))
        end
        def coerce(value, state:); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Hash[T.anything, T.anything], T.anything),
              state: Knockapi::Internal::Type::Converter::DumpState
            )
            .returns(T.any(Knockapi::Internal::AnyHash, T.anything))
        end
        def dump(value, state:); end

        # @api private
        sig(:final) { returns(Elem) }
        protected def item_type; end

        # @api private
        sig(:final) { returns(T::Boolean) }
        protected def nilable?; end

        # @api private
        sig(:final) do
          params(
            type_info: T.any(
              Knockapi::Internal::AnyHash,
              T.proc.returns(Knockapi::Internal::Type::Converter::Input),
              Knockapi::Internal::Type::Converter::Input
            ),
            spec: Knockapi::Internal::AnyHash
          )
            .void
        end
        def initialize(type_info, spec = {}); end
      end
    end
  end
end
