# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#update
    class User < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The ID for the user that you set when identifying them in Knock.
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
      #   URL to the user's avatar image.
      #
      #   @return [String, nil]
      optional :avatar, String, nil?: true

      # @!attribute created_at
      #   The creation date of the user from your system.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute email
      #   The email address of the user.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #   Display name of the user.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #   Phone number of the user.
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute timezone
      #   Timezone of the user.
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(id:, _typename:, updated_at:, avatar: nil, created_at: nil, email: nil, name: nil, phone_number: nil, timezone: nil)
      #   A user who can receive notifications in Knock. They are always referenced by
      #   your internal identifier.
      #
      #   @param id [String]
      #   @param _typename [String]
      #   @param updated_at [Time]
      #   @param avatar [String, nil]
      #   @param created_at [Time, nil]
      #   @param email [String, nil]
      #   @param name [String, nil]
      #   @param phone_number [String, nil]
      #   @param timezone [String, nil]
    end
  end
end
