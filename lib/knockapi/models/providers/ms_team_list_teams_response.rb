# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#list_teams
      class MsTeamListTeamsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute ms_teams_teams
        #
        #   @return [Array<Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam>]
        required :ms_teams_teams,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam] }

        # @!attribute skip_token
        #
        #   @return [String, nil]
        required :skip_token, String, nil?: true

        # @!parse
        #   # The response from a teams for Microsoft Teams provider request
        #   #
        #   # @param ms_teams_teams [Array<Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam>]
        #   # @param skip_token [String, nil]
        #   #
        #   def initialize(ms_teams_teams:, skip_token:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        class MsTeamsTeam < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param display_name [String]
          #   # @param description [String, nil]
          #   #
          #   def initialize(id:, display_name:, description: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
