# typed: strong

module Knockapi
  module Models
    class Tenant < Knockapi::Internal::Type::BaseModel
      # The unique identifier for the tenant.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # An optional name for the tenant.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The settings for the tenant. Includes branding and preference set.
      sig { returns(T.nilable(Knockapi::Models::Tenant::Settings)) }
      attr_reader :settings

      sig { params(settings: T.nilable(T.any(Knockapi::Models::Tenant::Settings, Knockapi::Internal::AnyHash))).void }
      attr_writer :settings

      # A tenant entity.
      sig do
        params(
          id: String,
          _typename: String,
          name: T.nilable(String),
          settings: T.nilable(T.any(Knockapi::Models::Tenant::Settings, Knockapi::Internal::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, name: nil, settings: nil); end

      sig do
        override
          .returns(
            {id: String, _typename: String, name: T.nilable(String), settings: T.nilable(Knockapi::Models::Tenant::Settings)}
          )
      end
      def to_hash; end

      class Settings < Knockapi::Internal::Type::BaseModel
        # The branding for the tenant.
        sig { returns(T.nilable(Knockapi::Models::Tenant::Settings::Branding)) }
        attr_reader :branding

        sig do
          params(
            branding: T.nilable(T.any(Knockapi::Models::Tenant::Settings::Branding, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :branding

        # A preference set represents a specific set of notification preferences for a
        # recipient. A recipient can have multiple preference sets.
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSet)) }
        attr_reader :preference_set

        sig do
          params(
            preference_set: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSet, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :preference_set

        # The settings for the tenant. Includes branding and preference set.
        sig do
          params(
            branding: T.nilable(T.any(Knockapi::Models::Tenant::Settings::Branding, Knockapi::Internal::AnyHash)),
            preference_set: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSet, Knockapi::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(branding: nil, preference_set: nil); end

        sig do
          override
            .returns(
              {
                branding: T.nilable(Knockapi::Models::Tenant::Settings::Branding),
                preference_set: T.nilable(Knockapi::Models::Recipients::PreferenceSet)
              }
            )
        end
        def to_hash; end

        class Branding < Knockapi::Internal::Type::BaseModel
          # The icon URL for the tenant. Must point to a valid image with an image MIME
          # type.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # The logo URL for the tenant. Must point to a valid image with an image MIME
          # type.
          sig { returns(T.nilable(String)) }
          attr_accessor :logo_url

          # The primary color for the tenant, provided as a hex value.
          sig { returns(T.nilable(String)) }
          attr_accessor :primary_color

          # The primary color contrast for the tenant, provided as a hex value.
          sig { returns(T.nilable(String)) }
          attr_accessor :primary_color_contrast

          # The branding for the tenant.
          sig do
            params(
              icon_url: T.nilable(String),
              logo_url: T.nilable(String),
              primary_color: T.nilable(String),
              primary_color_contrast: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil); end

          sig do
            override
              .returns(
                {
                  icon_url: T.nilable(String),
                  logo_url: T.nilable(String),
                  primary_color: T.nilable(String),
                  primary_color_contrast: T.nilable(String)
                }
              )
          end
          def to_hash; end
        end
      end
    end
  end
end
