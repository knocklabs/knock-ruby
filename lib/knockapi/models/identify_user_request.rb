# frozen_string_literal: true

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute avatar
      #   URL to the user's avatar image.
      #
      #   @return [String, nil]
      optional :avatar, String, nil?: true

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

      # @!attribute locale
      #   The locale of the user. Used for [message localization](/concepts/translations).
      #
      #   @return [String, nil]
      optional :locale, String, nil?: true

      # @!attribute name
      #   Display name of the user.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #   The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      #   user (required for SMS channels).
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!attribute timezone
      #   The timezone of the user. Must be a valid
      #   [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      #   Used for
      #   [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(avatar: nil, channel_data: nil, created_at: nil, email: nil, locale: nil, name: nil, phone_number: nil, preferences: nil, timezone: nil)
      #   A set of parameters to identify a user with. Does not include the user ID, as
      #   that's specified elsewhere in the request. You can supply any additional
      #   properties you'd like to upsert for the user.
      #
      #   @param avatar [String, nil]
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   @param created_at [Time, nil]
      #   @param email [String, nil]
      #   @param locale [String, nil]
      #   @param name [String, nil]
      #   @param phone_number [String, nil]
      #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   @param timezone [String, nil]
    end
  end
end
