# typed: strong

module Knockapi
  module Models
    module Users
      class FeedGetSettingsResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::FeedGetSettingsResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # Features configuration for the user's feed.
        sig do
          returns(Knockapi::Models::Users::FeedGetSettingsResponse::Features)
        end
        attr_reader :features

        sig do
          params(
            features:
              Knockapi::Models::Users::FeedGetSettingsResponse::Features::OrHash
          ).void
        end
        attr_writer :features

        # The response for the user's feed settings.
        sig do
          params(
            features:
              Knockapi::Models::Users::FeedGetSettingsResponse::Features::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Features configuration for the user's feed.
          features:
        )
        end

        sig do
          override.returns(
            {
              features:
                Knockapi::Models::Users::FeedGetSettingsResponse::Features
            }
          )
        end
        def to_hash
        end

        class Features < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::FeedGetSettingsResponse::Features,
                Knockapi::Internal::AnyHash
              )
            end

          # Whether branding is required for the user's feed.
          sig { returns(T::Boolean) }
          attr_accessor :branding_required

          # Features configuration for the user's feed.
          sig do
            params(branding_required: T::Boolean).returns(T.attached_class)
          end
          def self.new(
            # Whether branding is required for the user's feed.
            branding_required:
          )
          end

          sig { override.returns({ branding_required: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
