# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#check_auth
      class MsTeamCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute connection
        #   A Microsoft Teams connection object.
        #
        #   @return [Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection]
        required :connection, -> { Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection }

        # @!method initialize(connection:)
        #   The response from a Microsoft Teams auth check request.
        #
        #   @param connection [Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection] A Microsoft Teams connection object.

        # @see Knockapi::Models::Providers::MsTeamCheckAuthResponse#connection
        class Connection < Knockapi::Internal::Type::BaseModel
          # @!attribute ok
          #   Whether the Microsoft Teams connection is valid.
          #
          #   @return [Boolean]
          required :ok, Knockapi::Internal::Type::Boolean

          # @!attribute ms_teams_tenant_id
          #   The Microsoft Teams tenant ID for the connected tenant.
          #
          #   @return [String, nil]
          optional :ms_teams_tenant_id, String, nil?: true

          # @!attribute reason
          #   The reason for the Microsoft Teams connection if it is not valid.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!method initialize(ok:, ms_teams_tenant_id: nil, reason: nil)
          #   A Microsoft Teams connection object.
          #
          #   @param ok [Boolean] Whether the Microsoft Teams connection is valid.
          #
          #   @param ms_teams_tenant_id [String, nil] The Microsoft Teams tenant ID for the connected tenant.
          #
          #   @param reason [String, nil] The reason for the Microsoft Teams connection if it is not valid.
        end
      end
    end
  end
end
