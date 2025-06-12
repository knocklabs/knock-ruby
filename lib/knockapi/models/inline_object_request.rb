# frozen_string_literal: true

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute collection
      #   The collection this object belongs to.
      #
      #   @return [String]
      required :collection, String

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil]
      optional :channel_data,
               -> {
                 Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::InlineChannelDataRequestItem]
               },
               nil?: true

      # @!attribute created_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set id.
      #   Preferences that are set inline will be merged into any existing preferences
      #   rather than replacing them.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!method initialize(id:, collection:, channel_data: nil, created_at: nil, preferences: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::InlineObjectRequest} for more details.
      #
      #   A custom [Object](/concepts/objects) entity which belongs to a collection.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param collection [String] The collection this object belongs to.
      #
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] A request to set channel data for a type of channel inline.
      #
      #   @param created_at [Time, nil] Timestamp when the resource was created.
      #
      #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] Inline set preferences for a recipient, where the key is the preference set id.
    end
  end
end
