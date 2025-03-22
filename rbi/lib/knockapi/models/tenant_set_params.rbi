# typed: strong

module Knockapi
  module Models
    class TenantSetParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      def channel_data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]))
          .returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]))
      end
      def channel_data=(_)
      end

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      def preferences
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]))
          .returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]))
      end
      def preferences=(_)
      end

      sig { returns(T.nilable(Knockapi::Models::TenantSetParams::Settings)) }
      def settings
      end

      sig do
        params(_: T.any(Knockapi::Models::TenantSetParams::Settings, Knockapi::Util::AnyHash))
          .returns(T.any(Knockapi::Models::TenantSetParams::Settings, Knockapi::Util::AnyHash))
      end
      def settings=(_)
      end

      sig do
        params(
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Util::AnyHash)]
          ),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash)]
          ),
          settings: T.any(Knockapi::Models::TenantSetParams::Settings, Knockapi::Util::AnyHash),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, settings: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
              settings: Knockapi::Models::TenantSetParams::Settings,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Settings < Knockapi::BaseModel
        sig { returns(T.nilable(Knockapi::Models::TenantSetParams::Settings::Branding)) }
        def branding
        end

        sig do
          params(_: T.any(Knockapi::Models::TenantSetParams::Settings::Branding, Knockapi::Util::AnyHash))
            .returns(T.any(Knockapi::Models::TenantSetParams::Settings::Branding, Knockapi::Util::AnyHash))
        end
        def branding=(_)
        end

        # Set preferences for a recipient
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)) }
        def preference_set
        end

        sig do
          params(_: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash)))
            .returns(T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash)))
        end
        def preference_set=(_)
        end

        sig do
          params(
            branding: T.any(Knockapi::Models::TenantSetParams::Settings::Branding, Knockapi::Util::AnyHash),
            preference_set: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(branding: nil, preference_set: nil)
        end

        sig do
          override
            .returns(
              {
                branding: Knockapi::Models::TenantSetParams::Settings::Branding,
                preference_set: T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)
              }
            )
        end
        def to_hash
        end

        class Branding < Knockapi::BaseModel
          sig { returns(T.nilable(String)) }
          def icon_url
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def icon_url=(_)
          end

          sig { returns(T.nilable(String)) }
          def logo_url
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def logo_url=(_)
          end

          sig { returns(T.nilable(String)) }
          def primary_color
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def primary_color=(_)
          end

          sig { returns(T.nilable(String)) }
          def primary_color_contrast
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def primary_color_contrast=(_)
          end

          sig do
            params(
              icon_url: T.nilable(String),
              logo_url: T.nilable(String),
              primary_color: T.nilable(String),
              primary_color_contrast: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(icon_url: nil, logo_url: nil, primary_color: nil, primary_color_contrast: nil)
          end

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
          def to_hash
          end
        end
      end
    end
  end
end
