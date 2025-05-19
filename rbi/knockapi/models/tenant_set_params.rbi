# typed: strong

module Knockapi
  module Models
    class TenantSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::TenantSetParams, Knockapi::Internal::AnyHash)
        end

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelData,
                Knockapi::Recipients::OneSignalChannelData,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            ]
          )
        )
      end
      attr_accessor :channel_data

      # Inline set preferences for a recipient, where the key is the preference set id.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_accessor :preferences

      # The settings for the tenant. Includes branding and preference set.
      sig { returns(T.nilable(Knockapi::TenantSetParams::Settings)) }
      attr_reader :settings

      sig { params(settings: Knockapi::TenantSetParams::Settings::OrHash).void }
      attr_writer :settings

      sig do
        params(
          channel_data:
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  Knockapi::Recipients::PushChannelData::OrHash,
                  Knockapi::Recipients::OneSignalChannelData::OrHash,
                  Knockapi::Recipients::SlackChannelData::OrHash,
                  Knockapi::Recipients::MsTeamsChannelData::OrHash,
                  Knockapi::Recipients::DiscordChannelData::OrHash
                )
              ]
            ),
          preferences:
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSetRequest::OrHash
              ]
            ),
          settings: Knockapi::TenantSetParams::Settings::OrHash,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        preferences: nil,
        # The settings for the tenant. Includes branding and preference set.
        settings: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_data:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    Knockapi::Recipients::PushChannelData,
                    Knockapi::Recipients::OneSignalChannelData,
                    Knockapi::Recipients::SlackChannelData,
                    Knockapi::Recipients::MsTeamsChannelData,
                    Knockapi::Recipients::DiscordChannelData
                  )
                ]
              ),
            preferences:
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest]
              ),
            settings: Knockapi::TenantSetParams::Settings,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Settings < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::TenantSetParams::Settings,
              Knockapi::Internal::AnyHash
            )
          end

        # The branding for the tenant.
        sig do
          returns(T.nilable(Knockapi::TenantSetParams::Settings::Branding))
        end
        attr_reader :branding

        sig do
          params(
            branding: Knockapi::TenantSetParams::Settings::Branding::OrHash
          ).void
        end
        attr_writer :branding

        # A request to set a preference set for a recipient.
        sig { returns(T.nilable(Knockapi::Recipients::PreferenceSetRequest)) }
        attr_reader :preference_set

        sig do
          params(
            preference_set:
              T.nilable(Knockapi::Recipients::PreferenceSetRequest::OrHash)
          ).void
        end
        attr_writer :preference_set

        # The settings for the tenant. Includes branding and preference set.
        sig do
          params(
            branding: Knockapi::TenantSetParams::Settings::Branding::OrHash,
            preference_set:
              T.nilable(Knockapi::Recipients::PreferenceSetRequest::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The branding for the tenant.
          branding: nil,
          # A request to set a preference set for a recipient.
          preference_set: nil
        )
        end

        sig do
          override.returns(
            {
              branding: Knockapi::TenantSetParams::Settings::Branding,
              preference_set:
                T.nilable(Knockapi::Recipients::PreferenceSetRequest)
            }
          )
        end
        def to_hash
        end

        class Branding < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::TenantSetParams::Settings::Branding,
                Knockapi::Internal::AnyHash
              )
            end

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
            ).returns(T.attached_class)
          end
          def self.new(
            # The icon URL for the tenant. Must point to a valid image with an image MIME
            # type.
            icon_url: nil,
            # The logo URL for the tenant. Must point to a valid image with an image MIME
            # type.
            logo_url: nil,
            # The primary color for the tenant, provided as a hex value.
            primary_color: nil,
            # The primary color contrast for the tenant, provided as a hex value.
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
end
