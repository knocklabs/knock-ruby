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

        # @!parse
        #   # The response from a Microsoft Teams auth check request.
        #   #
        #   # @param connection [Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection]
        #   #
        #   def initialize(connection:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::Providers::MsTeamCheckAuthResponse#connection
        class Connection < Knockapi::Internal::Type::BaseModel
          # @!attribute ok
          #   Whether the Microsoft Teams connection is valid.
          #
          #   @return [Boolean]
          required :ok, Knockapi::Internal::Type::Boolean

          # @!attribute reason
          #   The reason for the Microsoft Teams connection if it is not valid.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!parse
          #   # A Microsoft Teams connection object.
          #   #
          #   # @param ok [Boolean]
          #   # @param reason [String, nil]
          #   #
          #   def initialize(ok:, reason: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
