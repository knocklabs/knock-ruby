# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#check_auth
      class MsTeamCheckAuthResponse < Knockapi::BaseModel
        # @!attribute connection
        #
        #   @return [Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection]
        required :connection, -> { Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection }

        # @!parse
        #   # The response from a Microsoft Teams auth check request
        #   #
        #   # @param connection [Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection]
        #   #
        #   def initialize(connection:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # @see Knockapi::Models::Providers::MsTeamCheckAuthResponse#connection
        class Connection < Knockapi::BaseModel
          # @!attribute ok
          #
          #   @return [Boolean]
          required :ok, Knockapi::BooleanModel

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!parse
          #   # @param ok [Boolean]
          #   # @param reason [String, nil]
          #   #
          #   def initialize(ok:, reason: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
