# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#list_channels
      class SlackListChannelsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute next_cursor
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!attribute slack_channels
        #
        #   @return [Array<Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel>]
        required :slack_channels,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel] }

        # @!parse
        #   # The response from a Slack channels for provider request
        #   #
        #   # @param next_cursor [String, nil]
        #   # @param slack_channels [Array<Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel>]
        #   #
        #   def initialize(next_cursor:, slack_channels:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        class SlackChannel < Knockapi::Internal::Type::BaseModel
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
          required :is_im, Knockapi::Internal::Type::Boolean

          # @!attribute is_private
          #
          #   @return [Boolean]
          required :is_private, Knockapi::Internal::Type::Boolean

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

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
