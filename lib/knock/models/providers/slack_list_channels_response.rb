# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class SlackListChannelsResponse < Knock::BaseModel
        # @!attribute next_cursor
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!attribute slack_channels
        #
        #   @return [Array<Knock::Models::Providers::SlackListChannelsResponse::SlackChannel>]
        required :slack_channels,
                 -> { Knock::ArrayOf[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel] }

        # @!parse
        #   # The response from a Slack channels for provider request
        #   #
        #   # @param next_cursor [String, nil]
        #   # @param slack_channels [Array<Knock::Models::Providers::SlackListChannelsResponse::SlackChannel>]
        #   #
        #   def initialize(next_cursor:, slack_channels:, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class SlackChannel < Knock::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute context_team_id
          #
          #   @return [String]
          required :context_team_id, String

          # @!attribute is_im
          #
          #   @return [Boolean]
          required :is_im, Knock::BooleanModel

          # @!attribute is_private
          #
          #   @return [Boolean]
          required :is_private, Knock::BooleanModel

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param context_team_id [String]
          #   # @param is_im [Boolean]
          #   # @param is_private [Boolean]
          #   # @param name [String]
          #   #
          #   def initialize(id:, context_team_id:, is_im:, is_private:, name:, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
