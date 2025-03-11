# frozen_string_literal: true

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::BaseModel
      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
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
               -> { Knockapi::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!parse
      #   # A set of parameters to identify a user with. Does not include the user ID, as
      #   #   that's specified elsewhere in the request. You can supply any additional
      #   #   properties you'd like to upsert against the user.
      #   #
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   #
      #   def initialize(channel_data: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
