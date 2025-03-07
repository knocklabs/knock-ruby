# frozen_string_literal: true

module Knock
  module Models
    class TenantRequest < Knock::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      optional :channel_data, -> { Knock::HashOf[Knock::Models::ChannelDataRequest] }, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      optional :preferences, -> { Knock::HashOf[Knock::Models::PreferenceSetRequest] }, nil?: true

      # @!attribute [r] settings
      #
      #   @return [Knock::Models::TenantRequest::Settings, nil]
      optional :settings, -> { Knock::Models::TenantRequest::Settings }

      # @!parse
      #   # @return [Knock::Models::TenantRequest::Settings]
      #   attr_writer :settings

      # @!parse
      #   # A tenant to be set in the system
      #   #
      #   # @param id [String]
      #   # @param channel_data [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      #   # @param preferences [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      #   # @param settings [Knock::Models::TenantRequest::Settings]
      #   #
      #   def initialize(id:, channel_data: nil, preferences: nil, settings: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      class Settings < Knock::BaseModel
        # @!attribute [r] branding
        #
        #   @return [Knock::Models::TenantRequest::Settings::Branding, nil]
        optional :branding, -> { Knock::Models::TenantRequest::Settings::Branding }

        # @!parse
        #   # @return [Knock::Models::TenantRequest::Settings::Branding]
        #   attr_writer :branding

        # @!attribute preference_set
        #   Set preferences for a recipient
        #
        #   @return [Knock::Models::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knock::Models::PreferenceSetRequest }, nil?: true

        # @!parse
        #   # @param branding [Knock::Models::TenantRequest::Settings::Branding]
        #   # @param preference_set [Knock::Models::PreferenceSetRequest, nil]
        #   #
        #   def initialize(branding: nil, preference_set: nil, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class Branding < Knock::BaseModel
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

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
