# frozen_string_literal: true

module Knockapi
  module Models
    class PreferenceSetCommercialSubscribedSetting < Knockapi::Internal::Type::BaseModel
      # @!attribute conditions
      #   A list of conditions to apply to the commercial subscribed preference.
      #
      #   @return [Array<Knockapi::Models::Condition>]
      required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

      # @!method initialize(conditions:)
      #   A set of settings for the commercial subscribed preference. Currently, this can
      #   only be a list of conditions to apply.
      #
      #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to the commercial subscribed preference.
    end
  end
end
