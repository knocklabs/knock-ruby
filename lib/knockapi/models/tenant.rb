# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Tenants#list
    class Tenant < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the tenant.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute name
      #   An optional name for the tenant.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute settings
      #   The settings for the tenant. Includes branding and preference set.
      #
      #   @return [Knockapi::Models::Tenant::Settings, nil]
      optional :settings, -> { Knockapi::Tenant::Settings }, nil?: true

      # @!method initialize(id:, _typename:, name: nil, settings: nil)
      #   A tenant entity.
      #
      #   @param id [String] The unique identifier for the tenant.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param name [String, nil] An optional name for the tenant.
      #
      #   @param settings [Knockapi::Models::Tenant::Settings, nil] The settings for the tenant. Includes branding and preference set.

      # @see Knockapi::Models::Tenant#settings
      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute branding
        #   The branding for the tenant.
        #
        #   @return [Knockapi::Models::Tenant::Settings::Branding, nil]
        optional :branding, -> { Knockapi::Tenant::Settings::Branding }, nil?: true

        # @!attribute preference_set
        #   A preference set represents a specific set of notification preferences for a
        #   recipient. A recipient can have multiple preference sets.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSet, nil]
        optional :preference_set, -> { Knockapi::Recipients::PreferenceSet }, nil?: true

        # @!method initialize(branding: nil, preference_set: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Tenant::Settings} for more details.
        #
        #   The settings for the tenant. Includes branding and preference set.
        #
        #   @param branding [Knockapi::Models::Tenant::Settings::Branding, nil] The branding for the tenant.
        #
        #   @param preference_set [Knockapi::Models::Recipients::PreferenceSet, nil] A preference set represents a specific set of notification preferences for a rec

        # @see Knockapi::Models::Tenant::Settings#branding
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
          #   {Knockapi::Models::Tenant::Settings::Branding} for more details.
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
