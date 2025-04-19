# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypeSetting < Knockapi::Internal::Type::BaseModel
        # @!attribute conditions
        #   A list of conditions to apply to a channel type.
        #
        #   @return [Array<Knockapi::Models::Condition>]
        required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

        # @!method initialize(conditions:)
        #   A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        #
        #   @param conditions [Array<Knockapi::Models::Condition>]
      end
    end
  end
end
