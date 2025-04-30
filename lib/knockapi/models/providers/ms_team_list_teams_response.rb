# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#list_teams
      class MsTeamListTeamsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   Microsoft Teams team ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute display_name
        #   Microsoft Teams team display name.
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute description
        #   Microsoft Teams team description.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(id:, display_name:, description: nil)
        #   @param id [String] Microsoft Teams team ID.
        #
        #   @param display_name [String] Microsoft Teams team display name.
        #
        #   @param description [String, nil] Microsoft Teams team description.
      end
    end
  end
end
