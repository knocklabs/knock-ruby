# typed: strong

module Knockapi
  module Models
    module Users
      class FeedGetSettingsResponse < Knockapi::Internal::Type::BaseModel
        sig { returns(Knockapi::Models::Users::FeedGetSettingsResponse::Features) }
        attr_reader :features

        sig do
          params(
            features: T.any(Knockapi::Models::Users::FeedGetSettingsResponse::Features, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :features

        # The response for the user's feed settings
        sig do
          params(
            features: T.any(Knockapi::Models::Users::FeedGetSettingsResponse::Features, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(features:); end

        sig { override.returns({features: Knockapi::Models::Users::FeedGetSettingsResponse::Features}) }
        def to_hash; end

        class Features < Knockapi::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :branding_required

          sig { params(branding_required: T::Boolean).returns(T.attached_class) }
          def self.new(branding_required:); end

          sig { override.returns({branding_required: T::Boolean}) }
          def to_hash; end
        end
      end
    end
  end
end
