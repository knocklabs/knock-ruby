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
      #   A user who can receive notifications in Knock. They are always referenced by
      #   your internal identifier.
      #
      #   @return [Knockapi::Models::User]
      required :user, -> { Knockapi::Models::User }

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

      # @!parse
      #   # An audience member.
      #   #
      #   # @param _typename [String]
      #   # @param added_at [Time]
      #   # @param user [Knockapi::Models::User]
      #   # @param user_id [String]
      #   # @param tenant [String, nil]
      #   #
      #   def initialize(_typename:, added_at:, user:, user_id:, tenant: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
