# frozen_string_literal: true

module Knock
  module Models
    # @abstract
    #
    # A recipient, which is either a user or an object
    class Recipient < Knock::Union
      # A user object
      variant -> { Knock::Models::User }

      # A custom-object entity which belongs to a collection.
      variant -> { Knock::Models::Object }
    end
  end
end
