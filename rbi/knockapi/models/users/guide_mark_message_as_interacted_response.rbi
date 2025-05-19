# typed: strong

module Knockapi
  module Models
    module Users
      class GuideMarkMessageAsInteractedResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::GuideMarkMessageAsInteractedResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # The status of a guide's action.
        sig { returns(String) }
        attr_accessor :status

        # A response for a guide action.
        sig { params(status: String).returns(T.attached_class) }
        def self.new(
          # The status of a guide's action.
          status:
        )
        end

        sig { override.returns({ status: String }) }
        def to_hash
        end
      end
    end
  end
end
