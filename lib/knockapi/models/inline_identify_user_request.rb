# frozen_string_literal: true

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The ID for the user that you set when identifying them in Knock.
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlineChannelDataRequestItem] },
               nil?: true

      # @!attribute created_at
      #   The creation date of the user from your system.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem] },
               nil?: true

      # @!method initialize(id:, channel_data: nil, created_at: nil, preferences: nil)
      #   A set of parameters to inline-identify a user with. Inline identifying the user
      #   will ensure that the user is available before the request is executed in Knock.
      #   It will perform an upsert for the user you're supplying, replacing any
      #   properties specified.
      #
      #   @param id [String]
      #   @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      #   @param created_at [Time, nil]
      #   @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
    end
  end
end
