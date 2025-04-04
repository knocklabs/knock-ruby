# frozen_string_literal: true

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute created_at
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
      #   # Inline identifies a custom object belonging to a collection
      #   #
      #   # @param id [String]
      #   # @param collection [String]
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   #
      #   def initialize(id:, collection:, channel_data: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
