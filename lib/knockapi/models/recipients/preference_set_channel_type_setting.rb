# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypeSetting < Knockapi::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<Knockapi::Models::Condition>]
        required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

        # @!parse
        #   # A set of settings for a channel type. Currently, this can only be a list of
        #   # conditions to apply.
        #   #
        #   # @param conditions [Array<Knockapi::Models::Condition>]
        #   #
        #   def initialize(conditions:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
