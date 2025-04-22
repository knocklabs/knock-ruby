# frozen_string_literal: true

module Knockapi
  module Models
    # A recipient of a notification, which is either a user or an object.
    module Recipient
      extend Knockapi::Internal::Type::Union

      # A [User](/concepts/users) represents an individual in your system who can receive notifications through Knock. Users are the most common recipients of notifications and are always referenced by your internal identifier.
      variant -> { Knockapi::Models::User }

      # A custom object entity which belongs to a collection.
      variant -> { Knockapi::Models::Object }

      # @!method self.variants
      #   @return [Array(Knockapi::Models::User, Knockapi::Models::Object)]
    end
  end
end
