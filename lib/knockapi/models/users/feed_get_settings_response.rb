# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#get_settings
      class FeedGetSettingsResponse < Knockapi::BaseModel
        # @!attribute features
        #
        #   @return [Knockapi::Models::Users::FeedGetSettingsResponse::Features]
        required :features, -> { Knockapi::Models::Users::FeedGetSettingsResponse::Features }

        # @!parse
        #   # The response for the user's feed settings
        #   #
        #   # @param features [Knockapi::Models::Users::FeedGetSettingsResponse::Features]
        #   #
        #   def initialize(features:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # @see Knockapi::Models::Users::FeedGetSettingsResponse#features
        class Features < Knockapi::BaseModel
          # @!attribute branding_required
          #
          #   @return [Boolean]
          required :branding_required, Knockapi::BooleanModel

          # @!parse
          #   # @param branding_required [Boolean]
          #   #
          #   def initialize(branding_required:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
