# frozen_string_literal: true

module Knockapi
  module Models
    class AudienceMemberRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute user
      #   A set of parameters to inline-identify a user with. Inline identifying the user
      #   will ensure that the user is available before the request is executed in Knock.
      #   It will perform an upsert for the user you're supplying, replacing any
      #   properties specified.
      #
      #   @return [Knockapi::Models::InlineIdentifyUserRequest]
      required :user, -> { Knockapi::InlineIdentifyUserRequest }

      # @!attribute tenant
      #   The unique identifier for the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!method initialize(user:, tenant: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::AudienceMemberRequest} for more details.
      #
      #   An audience member.
      #
      #   @param user [Knockapi::Models::InlineIdentifyUserRequest] A set of parameters to inline-identify a user with. Inline identifying the user
      #
      #   @param tenant [String, nil] The unique identifier for the tenant.
    end
  end
end
