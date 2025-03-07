# frozen_string_literal: true

module Knock
  module Models
    class Subscription < Knock::BaseModel
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
      #   @return [Knock::Models::Object]
      required :object, -> { Knock::Models::Object }

      # @!attribute recipient
      #   A recipient, which is either a user or an object
      #
      #   @return [Knock::Models::User, Knock::Models::Object]
      required :recipient, union: -> { Knock::Models::Recipient }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute properties
      #   The custom properties associated with the subscription
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :properties, Knock::HashOf[Knock::Unknown], nil?: true

      # @!parse
      #   # A subscription object
      #   #
      #   # @param _typename [String]
      #   # @param inserted_at [Time]
      #   # @param object [Knock::Models::Object]
      #   # @param recipient [Knock::Models::User, Knock::Models::Object]
      #   # @param updated_at [Time]
      #   # @param properties [Hash{Symbol=>Object}, nil]
      #   #
      #   def initialize(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
