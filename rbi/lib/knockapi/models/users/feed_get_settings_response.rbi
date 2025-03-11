# typed: strong

module Knockapi
  module Models
    module Users
      class FeedGetSettingsResponse < Knockapi::BaseModel
        sig { returns(Knockapi::Models::Users::FeedGetSettingsResponse::Features) }
        def features
        end

        sig do
          params(_: Knockapi::Models::Users::FeedGetSettingsResponse::Features)
            .returns(Knockapi::Models::Users::FeedGetSettingsResponse::Features)
        end
        def features=(_)
        end

        sig { params(features: Knockapi::Models::Users::FeedGetSettingsResponse::Features).returns(T.attached_class) }
        def self.new(features:)
        end

        sig { override.returns({features: Knockapi::Models::Users::FeedGetSettingsResponse::Features}) }
        def to_hash
        end

        class Features < Knockapi::BaseModel
          sig { returns(T::Boolean) }
          def branding_required
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def branding_required=(_)
          end

          sig { params(branding_required: T::Boolean).returns(T.attached_class) }
          def self.new(branding_required:)
          end

          sig { override.returns({branding_required: T::Boolean}) }
          def to_hash
          end
        end
      end
    end
  end
end
