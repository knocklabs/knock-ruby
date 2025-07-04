# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#update
    class User < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the user.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute avatar
      #   A URL for the avatar of the user.
      #
      #   @return [String, nil]
      optional :avatar, String, nil?: true

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

      # @!attribute phone_number
      #   The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      #   user (required for SMS channels).
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute timezone
      #   The timezone of the user. Must be a
      #   valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      #   Used
      #   for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(id:, _typename:, updated_at:, avatar: nil, created_at: nil, email: nil, name: nil, phone_number: nil, timezone: nil)
      #   Some parameter documentations has been truncated, see {Knockapi::Models::User}
      #   for more details.
      #
      #   A [User](/concepts/users) represents an individual in your system who can
      #   receive notifications through Knock. Users are the most common recipients of
      #   notifications and are always referenced by your internal identifier.
      #
      #   @param id [String] The unique identifier of the user.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param avatar [String, nil] A URL for the avatar of the user.
      #
      #   @param created_at [Time, nil] The creation date of the user from your system.
      #
      #   @param email [String, nil] The primary email address for the user.
      #
      #   @param name [String, nil] Display name of the user.
      #
      #   @param phone_number [String, nil] The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      #
      #   @param timezone [String, nil] The timezone of the user. Must be a valid [tz database time zone string](https:/
    end
  end
end
