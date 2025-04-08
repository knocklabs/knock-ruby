# typed: strong

module Knockapi
  module Internal
    module Type
      # @api private
      #
      # Ruby has no Boolean class; this is something for models to refer to.
      class Boolean
        extend Knockapi::Internal::Type::Converter

        abstract!
        final!

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def self.===(other); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def self.==(other); end

        class << self
          # @api private
          sig(:final) do
            override
              .params(value: T.any(T::Boolean, T.anything), state: Knockapi::Internal::Type::Converter::State)
              .returns(T.any(T::Boolean, T.anything))
          end
          def coerce(value, state:); end

          # @api private
          sig(:final) do
            override.params(value: T.any(T::Boolean, T.anything)).returns(T.any(T::Boolean, T.anything))
          end
          def dump(value); end
        end
      end
    end
  end
end
