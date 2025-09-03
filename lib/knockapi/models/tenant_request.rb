# frozen_string_literal: true

module Knockapi
  module Models
    class TenantRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the tenant.
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil]
      optional :channel_data,
               -> {
                 Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::InlineChannelDataRequestItem]
               },
               nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set id.
      #   Preferences that are set inline will be merged into any existing preferences
      #   rather than replacing them.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Recipients::PreferenceSetRequest] },
               nil?: true

      # @!attribute settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Knockapi::Models::TenantRequest::Settings, nil]
      optional :settings, -> { Knockapi::TenantRequest::Settings }

      # @!method initialize(id:, channel_data: nil, preferences: nil, settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::TenantRequest} for more details.
      #
      #   A tenant to be set in the system. You can supply any additional properties on
      #   the tenant object.
      #
      #   @param id [String] The unique identifier for the tenant.
      #
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] A request to set channel data for a type of channel inline.
      #
      #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] Inline set preferences for a recipient, where the key is the preference set id.
      #
      #   @param settings [Knockapi::Models::TenantRequest::Settings] The settings for the tenant. Includes branding and preference set.

      # @see Knockapi::Models::TenantRequest#settings
      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute branding
        #   The branding for the tenant.
        #
        #   @return [Knockapi::Models::TenantRequest::Settings::Branding, nil]
        optional :branding, -> { Knockapi::TenantRequest::Settings::Branding }

        # @!attribute preference_set
        #   A request to set a preference set for a recipient.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knockapi::Recipients::PreferenceSetRequest }, nil?: true

        # @!method initialize(branding: nil, preference_set: nil)
        #   The settings for the tenant. Includes branding and preference set.
        #
        #   @param branding [Knockapi::Models::TenantRequest::Settings::Branding] The branding for the tenant.
        #
        #   @param preference_set [Knockapi::Models::Recipients::PreferenceSetRequest, nil] A request to set a preference set for a recipient.

        # @see Knockapi::Models::TenantRequest::Settings#branding
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
          #   {Knockapi::Models::TenantRequest::Settings::Branding} for more details.
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
