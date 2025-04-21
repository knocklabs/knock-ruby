# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#revoke_access
      class SlackRevokeAccessResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute ok
        #   OK response.
        #
        #   @return [String, nil]
        optional :ok, String

        # @!method initialize(ok: nil)
        #   A response indicating the access was revoked.
        #
        #   @param ok [String]
      end
    end
  end
end
