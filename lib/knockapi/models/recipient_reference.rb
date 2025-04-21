# frozen_string_literal: true

module Knockapi
  module Models
    # A reference to a recipient, either a user identifier (string) or an object
    # reference (ID, collection).
    module RecipientReference
      extend Knockapi::Internal::Type::Union

      # The ID of the user.
      variant String

      # A reference to a recipient object.
      variant -> { Knockapi::Models::RecipientReference::ObjectReference }

      class ObjectReference < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   An identifier for the recipient object.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute collection
        #   The collection the recipient object belongs to.
        #
        #   @return [String, nil]
        optional :collection, String

        # @!method initialize(id: nil, collection: nil)
        #   A reference to a recipient object.
        #
        #   @param id [String]
        #   @param collection [String]
      end

      # @!method self.variants
      #   @return [Array(String, Knockapi::Models::RecipientReference::ObjectReference)]
    end
  end
end
