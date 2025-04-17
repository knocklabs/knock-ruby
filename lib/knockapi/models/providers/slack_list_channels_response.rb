# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#list_channels
      class SlackListChannelsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   A Slack channel ID from the Slack provider.
        #
        #   @return [String]
        required :id, String

        # @!attribute context_team_id
        #   The team ID that the Slack channel belongs to.
        #
        #   @return [String]
        required :context_team_id, String

        # @!attribute is_im
        #   Whether the Slack channel is an IM channel.
        #
        #   @return [Boolean]
        required :is_im, Knockapi::Internal::Type::Boolean

        # @!attribute is_private
        #   Whether the Slack channel is private.
        #
        #   @return [Boolean]
        required :is_private, Knockapi::Internal::Type::Boolean

        # @!attribute name
        #   Slack channel name.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # A Slack channel.
        #   #
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
