# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class MsTeamListChannelsResponse < Knock::BaseModel
        # @!attribute ms_teams_channels
        #
        #   @return [Array<Knock::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel>]
        required :ms_teams_channels,
                 -> { Knock::ArrayOf[Knock::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel] }

        # @!parse
        #   # The response from a channels for Microsoft Teams provider request
        #   #
        #   # @param ms_teams_channels [Array<Knock::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel>]
        #   #
        #   def initialize(ms_teams_channels:, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class MsTeamsChannel < Knock::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute [r] created_date_time
          #
          #   @return [String, nil]
          optional :created_date_time, String, api_name: :createdDateTime

          # @!parse
          #   # @return [String]
          #   attr_writer :created_date_time

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute [r] is_archived
          #
          #   @return [Boolean, nil]
          optional :is_archived, Knock::BooleanModel, api_name: :isArchived

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_archived

          # @!attribute [r] membership_type
          #
          #   @return [String, nil]
          optional :membership_type, String, api_name: :membershipType

          # @!parse
          #   # @return [String]
          #   attr_writer :membership_type

          # @!parse
          #   # @param id [String]
          #   # @param display_name [String]
          #   # @param created_date_time [String]
          #   # @param description [String, nil]
          #   # @param is_archived [Boolean]
          #   # @param membership_type [String]
          #   #
          #   def initialize(id:, display_name:, created_date_time: nil, description: nil, is_archived: nil, membership_type: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
