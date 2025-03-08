# typed: strong

module Knock
  module Models
    class TenantSetParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T.nilable(Knock::Models::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knock::Models::InlineChannelDataRequest))
          .returns(T.nilable(Knock::Models::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      sig { returns(T.nilable(Knock::Models::InlinePreferenceSetRequest)) }
      def preferences
      end

      sig do
        params(_: T.nilable(Knock::Models::InlinePreferenceSetRequest))
          .returns(T.nilable(Knock::Models::InlinePreferenceSetRequest))
      end
      def preferences=(_)
      end

      sig { returns(T.nilable(Knock::Models::TenantSetParams::Settings)) }
      def settings
      end

      sig { params(_: Knock::Models::TenantSetParams::Settings).returns(Knock::Models::TenantSetParams::Settings) }
      def settings=(_)
      end

      sig do
        params(
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          settings: Knock::Models::TenantSetParams::Settings,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, settings: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
              preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
              settings: Knock::Models::TenantSetParams::Settings,
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Settings < Knock::BaseModel
        sig { returns(T.nilable(Knock::Models::TenantSetParams::Settings::Branding)) }
        def branding
        end

        sig do
          params(_: Knock::Models::TenantSetParams::Settings::Branding)
            .returns(Knock::Models::TenantSetParams::Settings::Branding)
        end
        def branding=(_)
        end

        sig { returns(T.nilable(Knock::Models::PreferenceSetRequest)) }
        def preference_set
        end

        sig do
          params(_: T.nilable(Knock::Models::PreferenceSetRequest))
            .returns(T.nilable(Knock::Models::PreferenceSetRequest))
        end
        def preference_set=(_)
        end

        sig do
          params(
            branding: Knock::Models::TenantSetParams::Settings::Branding,
            preference_set: T.nilable(Knock::Models::PreferenceSetRequest)
          )
            .returns(T.attached_class)
        end
        def self.new(branding: nil, preference_set: nil)
        end

        sig do
          override
            .returns(
              {
                branding: Knock::Models::TenantSetParams::Settings::Branding,
                preference_set: T.nilable(Knock::Models::PreferenceSetRequest)
              }
            )
        end
        def to_hash
        end

        class Branding < Knock::BaseModel
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
