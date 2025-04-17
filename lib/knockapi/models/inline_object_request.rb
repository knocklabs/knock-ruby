# frozen_string_literal: true

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute [r] id
      #   Unique identifier for the object.
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute [r] collection
      #   The collection this object belongs to.
      #
      #   @return [String, nil]
      optional :collection, String

      # @!parse
      #   # @return [String]
      #   attr_writer :collection

      # @!attribute created_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!parse
      #   # A custom object entity which belongs to a collection.
      #   #
      #   # @param id [String]
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param collection [String]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   #
      #   def initialize(id: nil, channel_data: nil, collection: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
