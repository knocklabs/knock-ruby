# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelSetting < Knockapi::Internal::Type::BaseModel
        # @!attribute conditions
        #   A list of conditions to apply to a specific channel.
        #
        #   @return [Array<Knockapi::Models::Condition>]
        required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

        # @!method initialize(conditions:)
        #   A set of settings for a specific channel. Currently, this can only be a list of
        #   conditions to apply.
        #
        #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to a specific channel.
      end
    end
  end
end
