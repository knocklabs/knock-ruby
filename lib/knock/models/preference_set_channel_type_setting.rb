# frozen_string_literal: true

module Knock
  module Models
    class PreferenceSetChannelTypeSetting < Knock::BaseModel
      # @!attribute conditions
      #
      #   @return [Array<Knock::Models::Condition>]
      required :conditions, -> { Knock::ArrayOf[Knock::Models::Condition] }

      # @!parse
      #   # A set of settings for a channel type. Currently, this can only be a list of
      #   #   conditions to apply.
      #   #
      #   # @param conditions [Array<Knock::Models::Condition>]
      #   #
      #   def initialize(conditions:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
