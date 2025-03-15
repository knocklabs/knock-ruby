# typed: strong

module Knockapi
  module Models
    class TenantRequest < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)) }
      def preferences
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
      end
      def preferences=(_)
      end

      sig { returns(T.nilable(Knockapi::Models::TenantRequest::Settings)) }
      def settings
      end

      sig { params(_: Knockapi::Models::TenantRequest::Settings).returns(Knockapi::Models::TenantRequest::Settings) }
      def settings=(_)
      end

      # A tenant to be set in the system
      sig do
        params(
          id: String,
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest),
          settings: Knockapi::Models::TenantRequest::Settings
        )
          .returns(T.attached_class)
      end
      def self.new(id:, channel_data: nil, preferences: nil, settings: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
              preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest),
              settings: Knockapi::Models::TenantRequest::Settings
            }
          )
      end
      def to_hash
      end

      class Settings < Knockapi::BaseModel
        sig { returns(T.nilable(Knockapi::Models::TenantRequest::Settings::Branding)) }
        def branding
        end

        sig do
          params(_: Knockapi::Models::TenantRequest::Settings::Branding)
            .returns(Knockapi::Models::TenantRequest::Settings::Branding)
        end
        def branding=(_)
        end

        # Set preferences for a recipient
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)) }
        def preference_set
        end

        sig do
          params(_: T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest))
            .returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest))
        end
        def preference_set=(_)
        end

        sig do
          params(
            branding: Knockapi::Models::TenantRequest::Settings::Branding,
            preference_set: T.nilable(Knockapi::Models::Recipients::PreferenceSetRequest)
          )
            .returns(T.attached_class)
        end
        def self.new(branding: nil, preference_set: nil)
        end

        sig do
          override
            .returns(
              {
                branding: Knockapi::Models::TenantRequest::Settings::Branding,
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
