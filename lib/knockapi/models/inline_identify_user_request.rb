# frozen_string_literal: true

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::BaseModel
      # @!attribute id
      #   The ID of the user to identify. This is an ID that you supply.
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute created_at
      #   The creation date of the user from your system.
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
      #   # A set of parameters to inline-identify a user with. Inline identifying the user
      #   #   will ensure that the user is available before the request is executed in Knock.
      #   #   It will perform an upsert against the user you're supplying, replacing any
      #   #   properties specified.
      #   #
      #   # @param id [String]
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   #
      #   def initialize(id:, channel_data: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
