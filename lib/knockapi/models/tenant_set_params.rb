# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#set
    class TenantSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil]
      optional :channel_data,
               -> {
                 Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::InlineChannelDataRequestItem]
               },
               nil?: true

      # @!attribute settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Knockapi::Models::TenantSetParams::Settings, nil]
      optional :settings, -> { Knockapi::TenantSetParams::Settings }

      # @!method initialize(channel_data: nil, settings: nil, request_options: {})
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] A request to set channel data for a type of channel inline.
      #
      #   @param settings [Knockapi::Models::TenantSetParams::Settings] The settings for the tenant. Includes branding and preference set.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute branding
        #   The branding for the tenant.
        #
        #   @return [Knockapi::Models::TenantSetParams::Settings::Branding, nil]
        optional :branding, -> { Knockapi::TenantSetParams::Settings::Branding }

        # @!attribute preference_set
        #   A request to set a preference set for a recipient.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knockapi::Recipients::PreferenceSetRequest }, nil?: true

        # @!method initialize(branding: nil, preference_set: nil)
        #   The settings for the tenant. Includes branding and preference set.
        #
        #   @param branding [Knockapi::Models::TenantSetParams::Settings::Branding] The branding for the tenant.
        #
        #   @param preference_set [Knockapi::Models::Recipients::PreferenceSetRequest, nil] A request to set a preference set for a recipient.

        # @see Knockapi::Models::TenantSetParams::Settings#branding
        class Branding < Knockapi::Internal::Type::BaseModel
          # @!attribute icon_url
          #   The icon URL for the tenant. Must point to a valid image with an image MIME
          #   type.
          #
          #   @return [String, nil]
          optional :icon_url, String, nil?: true

          # @!attribute logo_url
          #   The logo URL for the tenant. Must point to a valid image with an image MIME
          #   type.
          #
          #   @return [String, nil]
          optional :logo_url, String, nil?: true

          # @!attribute primary_color
          #   The primary color for the tenant, provided as a hex value.
          #
          #   @return [String, nil]
          optional :primary_color, String, nil?: true

          # @!attribute primary_color_contrast
          #   The primary color contrast for the tenant, provided as a hex value.
          #
          #   @return [String, nil]
          optional :primary_color_contrast, String, nil?: true

          # @!method initialize(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::TenantSetParams::Settings::Branding} for more details.
          #
          #   The branding for the tenant.
          #
          #   @param icon_url [String, nil] The icon URL for the tenant. Must point to a valid image with an image MIME type
          #
          #   @param logo_url [String, nil] The logo URL for the tenant. Must point to a valid image with an image MIME type
          #
          #   @param primary_color [String, nil] The primary color for the tenant, provided as a hex value.
          #
          #   @param primary_color_contrast [String, nil] The primary color contrast for the tenant, provided as a hex value.
        end
      end
    end
  end
end
