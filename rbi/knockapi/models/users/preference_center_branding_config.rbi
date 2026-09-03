# typed: strong

module Knockapi
  module Models
    module Users
      class PreferenceCenterBrandingConfig < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::PreferenceCenterBrandingConfig,
              Knockapi::Internal::AnyHash
            )
          end

        # The icon URL for the preference center. Must point to a valid image with an
        # image MIME type.
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # The logo URL for the preference center. Must point to a valid image with an
        # image MIME type.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # The primary color for the preference center, provided as a hex value.
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_color

        # The primary color contrast for the preference center, provided as a hex value.
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_color_contrast

        # The branding for the preference center, sourced from public environment
        # variables.
        sig do
          params(
            icon_url: T.nilable(String),
            logo_url: T.nilable(String),
            primary_color: T.nilable(String),
            primary_color_contrast: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The icon URL for the preference center. Must point to a valid image with an
          # image MIME type.
          icon_url: nil,
          # The logo URL for the preference center. Must point to a valid image with an
          # image MIME type.
          logo_url: nil,
          # The primary color for the preference center, provided as a hex value.
          primary_color: nil,
          # The primary color contrast for the preference center, provided as a hex value.
          primary_color_contrast: nil
        )
        end

        sig do
          override.returns(
            {
              icon_url: T.nilable(String),
              logo_url: T.nilable(String),
              primary_color: T.nilable(String),
              primary_color_contrast: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
