# frozen_string_literal: true

module Knockapi
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Knockapi::Internal}::OMIT>" }
      end
        .freeze
  end
end
