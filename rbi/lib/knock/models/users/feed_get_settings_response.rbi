# typed: strong

module Knock
  module Models
    module Users
      class FeedGetSettingsResponse < Knock::BaseModel
        sig { returns(Knock::Models::Users::FeedGetSettingsResponse::Features) }
        def features
        end

        sig do
          params(_: Knock::Models::Users::FeedGetSettingsResponse::Features)
            .returns(Knock::Models::Users::FeedGetSettingsResponse::Features)
        end
        def features=(_)
        end

        sig { params(features: Knock::Models::Users::FeedGetSettingsResponse::Features).void }
        def initialize(features:)
        end

        sig { override.returns({features: Knock::Models::Users::FeedGetSettingsResponse::Features}) }
        def to_hash
        end

        class Features < Knock::BaseModel
          sig { returns(T::Boolean) }
          def branding_required
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def branding_required=(_)
          end

          sig { params(branding_required: T::Boolean).void }
          def initialize(branding_required:)
          end

          sig { override.returns({branding_required: T::Boolean}) }
          def to_hash
          end
        end
      end
    end
  end
end
