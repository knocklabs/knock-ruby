# frozen_string_literal: true

module Knockapi
  module Models
    class TenantRequest < Knockapi::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!attribute [r] settings
      #
      #   @return [Knockapi::Models::TenantRequest::Settings, nil]
      optional :settings, -> { Knockapi::Models::TenantRequest::Settings }

      # @!parse
      #   # @return [Knockapi::Models::TenantRequest::Settings]
      #   attr_writer :settings

      # @!parse
      #   # A tenant to be set in the system
      #   #
      #   # @param id [String]
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   # @param settings [Knockapi::Models::TenantRequest::Settings]
      #   #
      #   def initialize(id:, channel_data: nil, preferences: nil, settings: nil, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      class Settings < Knockapi::BaseModel
        # @!attribute [r] branding
        #
        #   @return [Knockapi::Models::TenantRequest::Settings::Branding, nil]
        optional :branding, -> { Knockapi::Models::TenantRequest::Settings::Branding }

        # @!parse
        #   # @return [Knockapi::Models::TenantRequest::Settings::Branding]
        #   attr_writer :branding

        # @!attribute preference_set
        #   Set preferences for a recipient
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knockapi::Models::Recipients::PreferenceSetRequest }, nil?: true

        # @!parse
        #   # @param branding [Knockapi::Models::TenantRequest::Settings::Branding]
        #   # @param preference_set [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        #   #
        #   def initialize(branding: nil, preference_set: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        class Branding < Knockapi::BaseModel
          # @!attribute icon_url
          #
          #   @return [String, nil]
          optional :icon_url, String, nil?: true

          # @!attribute logo_url
          #
          #   @return [String, nil]
          optional :logo_url, String, nil?: true

          # @!attribute primary_color
          #
          #   @return [String, nil]
          optional :primary_color, String, nil?: true

          # @!attribute primary_color_contrast
          #
          #   @return [String, nil]
          optional :primary_color_contrast, String, nil?: true

          # @!parse
          #   # @param icon_url [String, nil]
          #   # @param logo_url [String, nil]
          #   # @param primary_color [String, nil]
          #   # @param primary_color_contrast [String, nil]
          #   #
          #   def initialize(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
