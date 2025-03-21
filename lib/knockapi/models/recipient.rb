# frozen_string_literal: true

module Knockapi
  module Models
    # A recipient, which is either a user or an object
    module Recipient
      extend Knockapi::Union

      # A user object
      variant -> { Knockapi::Models::User }

      # A custom-object entity which belongs to a collection.
      variant -> { Knockapi::Models::Object }

      # @!parse
      #   class << self
      #     # @return [Array(Knockapi::Models::User, Knockapi::Models::Object)]
      #     def variants; end
      #   end
    end
  end
end
