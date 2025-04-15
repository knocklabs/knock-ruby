# frozen_string_literal: true

module Knockapi
  module Models
    class AudienceMember < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute added_at
      #
      #   @return [String]
      required :added_at, String

      # @!attribute user
      #   A user object
      #
      #   @return [Knockapi::Models::User]
      required :user, -> { Knockapi::Models::User }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute tenant
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!parse
      #   # A user belonging to an audience
      #   #
      #   # @param _typename [String]
      #   # @param added_at [String]
      #   # @param user [Knockapi::Models::User]
      #   # @param user_id [String]
      #   # @param tenant [String, nil]
      #   #
      #   def initialize(_typename:, added_at:, user:, user_id:, tenant: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
