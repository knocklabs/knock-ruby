# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#update
    class UserUpdateResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The ID for the user that you set when identifying them in Knock.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The creation date of the user from your system.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!attribute avatar
      #   URL to the user's avatar image.
      #
      #   @return [String, nil]
      optional :avatar, String, nil?: true

      # @!attribute channel_data
      #   Channel-specific information that's needed to deliver a notification to an end
      #   provider.
      #
      #   @return [Array<Knockapi::Models::Recipients::RecipientsChannelData>, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::RecipientsChannelData] },
               nil?: true

      # @!attribute email
      #   The primary email address for the user.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute locale
      #   The locale of the user. Used for [message localization](/concepts/translations)
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
      #   A preference set represents a specific set of notification preferences for a
      #   recipient. A recipient can have multiple preference sets.
      #
      #   @return [Knockapi::Models::Recipients::PreferenceSet, nil]
      optional :preferences, -> { Knockapi::Models::Recipients::PreferenceSet }, nil?: true

      # @!attribute timezone
      #   The timezone of the user. Must be a valid
      #   [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      #   Used for
      #   [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients)
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(id:, created_at:, updated_at:, _typename: nil, avatar: nil, channel_data: nil, email: nil, locale: nil, name: nil, phone_number: nil, preferences: nil, timezone: nil)
      #   The user that was created or updated.
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param updated_at [Time]
      #   @param _typename [String]
      #   @param avatar [String, nil]
      #   @param channel_data [Array<Knockapi::Models::Recipients::RecipientsChannelData>, nil]
      #   @param email [String, nil]
      #   @param locale [String, nil]
      #   @param name [String, nil]
      #   @param phone_number [String, nil]
      #   @param preferences [Knockapi::Models::Recipients::PreferenceSet, nil]
      #   @param timezone [String, nil]
    end
  end
end
