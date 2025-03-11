# frozen_string_literal: true

module Knockapi
  module Models
    # @abstract
    #
    # A recipient, which is either a user or an object
    class Recipient < Knockapi::Union
      # A user object
      variant -> { Knockapi::Models::User }

      # A custom-object entity which belongs to a collection.
      variant -> { Knockapi::Models::Object }
    end
  end
end
