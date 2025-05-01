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

        # @!method initialize(id:, context_team_id:, is_im:, is_private:, name:)
        #   A Slack channel.
        #
        #   @param id [String] A Slack channel ID from the Slack provider.
        #
        #   @param context_team_id [String] The team ID that the Slack channel belongs to.
        #
        #   @param is_im [Boolean] Whether the Slack channel is an IM channel.
        #
        #   @param is_private [Boolean] Whether the Slack channel is private.
        #
        #   @param name [String] Slack channel name.
      end
    end
  end
end
