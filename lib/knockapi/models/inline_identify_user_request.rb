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
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute created_at
      #   The creation date of the user from your system.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute email
      #   The primary email address for the user.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #   Display name of the user.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set id.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!attribute timezone
      #   The timezone of the user. Must be a
      #   valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      #   Used
      #   for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(id:, channel_data: nil, created_at: nil, email: nil, name: nil, preferences: nil, timezone: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::InlineIdentifyUserRequest} for more details.
      #
      #   A set of parameters to inline-identify a user with. Inline identifying the user
      #   will ensure that the user is available before the request is executed in Knock.
      #   It will perform an upsert for the user you're supplying, replacing any
      #   properties specified.
      #
      #   @param id [String] The ID for the user that you set when identifying them in Knock.
      #
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil] A request to set channel data for a type of channel inline.
      #
      #   @param created_at [Time, nil] The creation date of the user from your system.
      #
      #   @param email [String, nil] The primary email address for the user.
      #
      #   @param name [String, nil] Display name of the user.
      #
      #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] Inline set preferences for a recipient, where the key is the preference set id.
      #
      #   @param timezone [String, nil] The timezone of the user. Must be a valid [tz database time zone string](https:/
      #   ...
    end
  end
end
