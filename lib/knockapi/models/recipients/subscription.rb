# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute inserted_at
        #   Timestamp when the resource was created.
        #
        #   @return [Time]
        required :inserted_at, Time

        # @!attribute object
        #   A custom object entity which belongs to a collection.
        #
        #   @return [Knockapi::Models::Object]
        required :object, -> { Knockapi::Models::Object }

        # @!attribute recipient
        #   A recipient of a notification, which is either a user or an object.
        #
        #   @return [Knockapi::Models::User, Knockapi::Models::Object]
        required :recipient, union: -> { Knockapi::Models::Recipient }

        # @!attribute updated_at
        #   The timestamp when the resource was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute properties
        #   The custom properties associated with the recipients of the subscription.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :properties, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!method initialize(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil)
        #   A subscription object.
        #
        #   @param _typename [String]
        #   @param inserted_at [Time]
        #   @param object [Knockapi::Models::Object]
        #   @param recipient [Knockapi::Models::User, Knockapi::Models::Object]
        #   @param updated_at [Time]
        #   @param properties [Hash{Symbol=>Object}, nil]
      end
    end
  end
end
