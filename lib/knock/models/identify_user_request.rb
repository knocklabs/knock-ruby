# frozen_string_literal: true

module Knock
  module Models
    class IdentifyUserRequest < Knock::BaseModel
      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      optional :channel_data, -> { Knock::HashOf[Knock::Models::ChannelDataRequest] }, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      optional :preferences, -> { Knock::HashOf[Knock::Models::PreferenceSetRequest] }, nil?: true

      # @!parse
      #   # A set of parameters to identify a user with. Does not include the user ID, as
      #   #   that's specified elsewhere in the request. You can supply any additional
      #   #   properties you'd like to upsert against the user.
      #   #
      #   # @param channel_data [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      #   #
      #   def initialize(channel_data: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
