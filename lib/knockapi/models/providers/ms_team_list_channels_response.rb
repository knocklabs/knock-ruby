# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#list_channels
      class MsTeamListChannelsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute ms_teams_channels
        #   List of Microsoft Teams channels.
        #
        #   @return [Array<Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel>]
        required :ms_teams_channels,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel] }

        # @!method initialize(ms_teams_channels:)
        #   The response from a Microsoft Teams provider request, containing a list of
        #   channels.
        #
        #   @param ms_teams_channels [Array<Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel>]

        class MsTeamsChannel < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Microsoft Teams channel ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #   Microsoft Teams channel name.
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute [r] created_date_time
          #   Microsoft Teams channel created date and time.
          #
          #   @return [String, nil]
          optional :created_date_time, String, api_name: :createdDateTime

          # @!parse
          #   # @return [String]
          #   attr_writer :created_date_time

          # @!attribute description
          #   Microsoft Teams channel description.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute [r] is_archived
          #   Whether the Microsoft Teams channel is archived.
          #
          #   @return [Boolean, nil]
          optional :is_archived, Knockapi::Internal::Type::Boolean, api_name: :isArchived

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_archived

          # @!attribute [r] membership_type
          #   Microsoft Teams channel membership type.
          #
          #   @return [String, nil]
          optional :membership_type, String, api_name: :membershipType

          # @!parse
          #   # @return [String]
          #   attr_writer :membership_type

          # @!method initialize(id:, display_name:, created_date_time: nil, description: nil, is_archived: nil, membership_type: nil)
          #   @param id [String]
          #   @param display_name [String]
          #   @param created_date_time [String]
          #   @param description [String, nil]
          #   @param is_archived [Boolean]
          #   @param membership_type [String]
        end
      end
    end
  end
end
