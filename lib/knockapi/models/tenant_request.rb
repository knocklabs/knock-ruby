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
      #   @return [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlineChannelDataRequestItem] },
               nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem] },
               nil?: true

      # @!attribute settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Knockapi::Models::TenantRequest::Settings, nil]
      optional :settings, -> { Knockapi::Models::TenantRequest::Settings }

      # @!method initialize(id:, channel_data: nil, preferences: nil, settings: nil)
      #   A tenant to be set in the system. You can supply any additional properties on
      #   the tenant object.
      #
      #   @param id [String]
      #   @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      #   @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      #   @param settings [Knockapi::Models::TenantRequest::Settings]

      # @see Knockapi::Models::TenantRequest#settings
      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute branding
        #   The branding for the tenant.
        #
        #   @return [Knockapi::Models::TenantRequest::Settings::Branding, nil]
        optional :branding, -> { Knockapi::Models::TenantRequest::Settings::Branding }

        # @!attribute preference_set
        #   A request to set a preference set for a recipient.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest, nil]
        optional :preference_set, -> { Knockapi::Models::Recipients::PreferenceSetRequest }, nil?: true

        # @!method initialize(branding: nil, preference_set: nil)
        #   The settings for the tenant. Includes branding and preference set.
        #
        #   @param branding [Knockapi::Models::TenantRequest::Settings::Branding]
        #   @param preference_set [Knockapi::Models::Recipients::PreferenceSetRequest, nil]

        # @see Knockapi::Models::TenantRequest::Settings#branding
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

          # @!method initialize(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil)
          #   The branding for the tenant.
          #
          #   @param icon_url [String, nil]
          #   @param logo_url [String, nil]
          #   @param primary_color [String, nil]
          #   @param primary_color_contrast [String, nil]
        end
      end
    end
  end
end
