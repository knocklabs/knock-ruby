# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#get_settings
      class FeedGetSettingsResponse < Knockapi::Internal::Type::BaseModel
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

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::Users::FeedGetSettingsResponse#features
        class Features < Knockapi::Internal::Type::BaseModel
          # @!attribute branding_required
          #
          #   @return [Boolean]
          required :branding_required, Knockapi::Internal::Type::Boolean

          # @!parse
          #   # @param branding_required [Boolean]
          #   #
          #   def initialize(branding_required:, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
