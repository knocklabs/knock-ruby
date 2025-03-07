# frozen_string_literal: true

module Knock
  module Models
    module Users
      class FeedGetSettingsResponse < Knock::BaseModel
        # @!attribute features
        #
        #   @return [Knock::Models::Users::FeedGetSettingsResponse::Features]
        required :features, -> { Knock::Models::Users::FeedGetSettingsResponse::Features }

        # @!parse
        #   # The response for the user's feed settings
        #   #
        #   # @param features [Knock::Models::Users::FeedGetSettingsResponse::Features]
        #   #
        #   def initialize(features:, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class Features < Knock::BaseModel
          # @!attribute branding_required
          #
          #   @return [Boolean]
          required :branding_required, Knock::BooleanModel

          # @!parse
          #   # @param branding_required [Boolean]
          #   #
          #   def initialize(branding_required:, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
