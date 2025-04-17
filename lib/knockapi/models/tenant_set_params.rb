# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#set
    class TenantSetParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] },
               nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!attribute [r] settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Knockapi::Models::TenantSetParams::Settings, nil]
      optional :settings, -> { Knockapi::Models::TenantSetParams::Settings }

      # @!parse
      #   # @return [Knockapi::Models::TenantSetParams::Settings]
      #   attr_writer :settings

      # @!parse
      #   # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      #   # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      #   # @param settings [Knockapi::Models::TenantSetParams::Settings]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(channel_data: nil, preferences: nil, settings: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] branding
        #   The branding for the tenant.
        #
        #   @return [Knockapi::Models::TenantSetParams::Settings::Branding, nil]
        optional :branding, -> { Knockapi::Models::TenantSetParams::Settings::Branding }

        # @!parse
        #   # @return [Knockapi::Models::TenantSetParams::Settings::Branding]
        #   attr_writer :branding

        # @!attribute preference_set
        #   A request to set a preference set for a recipient.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knockapi::Models::Recipients::PreferenceSetRequest }, nil?: true

        # @!parse
        #   # The settings for the tenant. Includes branding and preference set.
        #   #
        #   # @param branding [Knockapi::Models::TenantSetParams::Settings::Branding]
        #   # @param preference_set [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        #   #
        #   def initialize(branding: nil, preference_set: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::TenantSetParams::Settings#branding
        class Branding < Knockapi::Internal::Type::BaseModel
          # @!attribute icon_url
          #   The icon URL for the tenant.
          #
          #   @return [String, nil]
          optional :icon_url, String, nil?: true

          # @!attribute logo_url
          #   The logo URL for the tenant.
          #
          #   @return [String, nil]
          optional :logo_url, String, nil?: true

          # @!attribute primary_color
          #   The primary color for the tenant.
          #
          #   @return [String, nil]
          optional :primary_color, String, nil?: true

          # @!attribute primary_color_contrast
          #   The primary color contrast for the tenant.
          #
          #   @return [String, nil]
          optional :primary_color_contrast, String, nil?: true

          # @!parse
          #   # The branding for the tenant.
          #   #
          #   # @param icon_url [String, nil]
          #   # @param logo_url [String, nil]
          #   # @param primary_color [String, nil]
          #   # @param primary_color_contrast [String, nil]
          #   #
          #   def initialize(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
