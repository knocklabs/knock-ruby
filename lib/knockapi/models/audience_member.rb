# frozen_string_literal: true

module Knockapi
  module Models
    class AudienceMember < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute added_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :added_at, Time

      # @!attribute user
      #   A [User](/concepts/users) represents an individual in your system who can
      #   receive notifications through Knock. Users are the most common recipients of
      #   notifications and are always referenced by your internal identifier.
      #
      #   @return [Knockapi::User]
      required :user, -> { Knockapi::User }

      # @!attribute user_id
      #   The ID for the user that you set when identifying them in Knock.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute tenant
      #   The unique identifier for the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!method initialize(_typename:, added_at:, user:, user_id:, tenant: nil)
      #   Some parameter documentations has been truncated, see {Knockapi::AudienceMember}
      #   for more details.
      #
      #   An audience member.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param added_at [Time] Timestamp when the resource was created.
      #
      #   @param user [Knockapi::User] A [User](/concepts/users) represents an individual in your system who can receiv
      #
      #   @param user_id [String] The ID for the user that you set when identifying them in Knock.
      #
      #   @param tenant [String, nil] The unique identifier for the tenant.
    end
  end
end
