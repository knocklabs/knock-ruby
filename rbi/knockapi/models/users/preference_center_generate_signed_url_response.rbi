# typed: strong

module Knockapi
  module Models
    module Users
      class PreferenceCenterGenerateSignedURLResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # The signed JWT token for the preference center, usable as the `/p/{token}` path
        # segment.
        sig { returns(String) }
        attr_accessor :token

        # The full URL to the preference center for the user.
        sig { returns(String) }
        attr_accessor :url

        # A signed preference center URL and token for a user.
        sig { params(token: String, url: String).returns(T.attached_class) }
        def self.new(
          # The signed JWT token for the preference center, usable as the `/p/{token}` path
          # segment.
          token:,
          # The full URL to the preference center for the user.
          url:
        )
        end

        sig { override.returns({ token: String, url: String }) }
        def to_hash
        end
      end
    end
  end
end
