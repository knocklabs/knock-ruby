# frozen_string_literal: true

module Knock
  module Models
    class AudienceMember < Knock::BaseModel
      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute added_at
      #
      #   @return [Time]
      required :added_at, Time

      # @!attribute user
      #   A user object
      #
      #   @return [Knock::Models::User]
      required :user, -> { Knock::Models::User }

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
      #   # @param added_at [Time]
      #   # @param user [Knock::Models::User]
      #   # @param user_id [String]
      #   # @param tenant [String, nil]
      #   #
      #   def initialize(_typename:, added_at:, user:, user_id:, tenant: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
