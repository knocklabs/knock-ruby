# typed: strong

module Knockapi
  module Models
    class TenantRequest < Knockapi::Internal::Type::BaseModel
      # The unique identifier for the tenant.
      sig { returns(String) }
      attr_accessor :id

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_accessor :channel_data

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem])) }
      attr_accessor :preferences

      # The settings for the tenant. Includes branding and preference set.
      sig { returns(T.nilable(Knockapi::Models::TenantRequest::Settings)) }
      attr_reader :settings

      sig { params(settings: T.any(Knockapi::Models::TenantRequest::Settings, Knockapi::Internal::AnyHash)).void }
      attr_writer :settings

      # A tenant to be set in the system. You can supply any additional properties on
      # the tenant object.
      sig do
        params(
          id: String,
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          preferences: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)]
          ),
          settings: T.any(Knockapi::Models::TenantRequest::Settings, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, channel_data: nil, preferences: nil, settings: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem]),
              preferences: T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem]),
              settings: Knockapi::Models::TenantRequest::Settings
            }
          )
      end
      def to_hash; end

      class Settings < Knockapi::Internal::Type::BaseModel
        # The branding for the tenant.
        sig { returns(T.nilable(Knockapi::Models::TenantRequest::Settings::Branding)) }
        attr_reader :branding

        sig do
          params(branding: T.any(Knockapi::Models::TenantRequest::Settings::Branding, Knockapi::Internal::AnyHash))
            .void
        end
        attr_writer :branding

        # A request to set a preference set for a recipient.
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)) }
        attr_reader :preference_set

        sig do
          params(
            preference_set: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :preference_set

        # The settings for the tenant. Includes branding and preference set.
        sig do
          params(
            branding: T.any(Knockapi::Models::TenantRequest::Settings::Branding, Knockapi::Internal::AnyHash),
            preference_set: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(branding: nil, preference_set: nil); end

        sig do
          override
            .returns(
              {
                branding: Knockapi::Models::TenantRequest::Settings::Branding,
                preference_set: T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)
              }
            )
        end
        def to_hash; end

        class Branding < Knockapi::Internal::Type::BaseModel
          # The icon URL for the tenant.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # The logo URL for the tenant.
          sig { returns(T.nilable(String)) }
          attr_accessor :logo_url

          # The primary color for the tenant.
          sig { returns(T.nilable(String)) }
          attr_accessor :primary_color

          # The primary color contrast for the tenant.
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
