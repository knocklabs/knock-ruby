# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class PreferenceCenterBrandingConfig < Knockapi::Internal::Type::BaseModel
        # @!attribute icon_url
        #   The icon URL for the preference center. Must point to a valid image with an
        #   image MIME type.
        #
        #   @return [String, nil]
        optional :icon_url, String, nil?: true

        # @!attribute logo_url
        #   The logo URL for the preference center. Must point to a valid image with an
        #   image MIME type.
        #
        #   @return [String, nil]
        optional :logo_url, String, nil?: true

        # @!attribute primary_color
        #   The primary color for the preference center, provided as a hex value.
        #
        #   @return [String, nil]
        optional :primary_color, String, nil?: true

        # @!attribute primary_color_contrast
        #   The primary color contrast for the preference center, provided as a hex value.
        #
        #   @return [String, nil]
        optional :primary_color_contrast, String, nil?: true

        # @!method initialize(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::PreferenceCenterBrandingConfig} for more details.
        #
        #   The branding for the preference center, sourced from public environment
        #   variables.
        #
        #   @param icon_url [String, nil] The icon URL for the preference center. Must point to a valid image with an imag
        #
        #   @param logo_url [String, nil] The logo URL for the preference center. Must point to a valid image with an imag
        #
        #   @param primary_color [String, nil] The primary color for the preference center, provided as a hex value.
        #
        #   @param primary_color_contrast [String, nil] The primary color contrast for the preference center, provided as a hex value.
      end
    end
  end
end
