# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#list_channels
      class SlackListChannelsResponse < Knockapi::Internal::Type::BaseModel
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
        required :is_im, Knockapi::Internal::Type::BooleanModel

        # @!attribute is_private
        #
        #   @return [Boolean]
        required :is_private, Knockapi::Internal::Type::BooleanModel

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
