# typed: strong

module Knockapi
  # @api private
  module Internal
    # Due to the current WIP status of Shapes support in Sorbet, types referencing
    # this alias might be refined in the future.
    AnyHash = T.type_alias { T::Hash[Symbol, T.anything] }

    OMIT = T.let(T.anything, T.anything)
  end
end
