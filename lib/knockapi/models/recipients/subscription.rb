# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute inserted_at
        #
        #   @return [Time]
        required :inserted_at, Time

        # @!attribute object
        #   A custom-object entity which belongs to a collection.
        #
        #   @return [Knockapi::Models::Object]
        required :object, -> { Knockapi::Models::Object }

        # @!attribute recipient
        #   A recipient, which is either a user or an object
        #
        #   @return [Knockapi::Models::User, Knockapi::Models::Object]
        required :recipient, union: -> { Knockapi::Models::Recipient }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute properties
        #   The custom properties associated with the subscription
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :properties, Knockapi::HashOf[Knockapi::Unknown], nil?: true

        # @!parse
        #   # A subscription object
        #   #
        #   # @param _typename [String]
        #   # @param inserted_at [Time]
        #   # @param object [Knockapi::Models::Object]
        #   # @param recipient [Knockapi::Models::User, Knockapi::Models::Object]
        #   # @param updated_at [Time]
        #   # @param properties [Hash{Symbol=>Object}, nil]
        #   #
        #   def initialize(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
