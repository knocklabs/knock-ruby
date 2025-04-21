# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#revoke_access
      class MsTeamRevokeAccessResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute ok
        #   OK response.
        #
        #   @return [String, nil]
        optional :ok, String

        # @!method initialize(ok: nil)
        #   A response indicating the operation was successful.
        #
        #   @param ok [String]
      end
    end
  end
end
