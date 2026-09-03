# typed: strong

module Knockapi
  module Models
    module Users
      class GuideUnarchiveGuideMessageParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::GuideUnarchiveGuideMessageParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        # The key of the guide.
        sig { returns(String) }
        attr_accessor :guide_key

        # The tenant ID of the guide.
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        sig do
          params(
            user_id: String,
            guide_key: String,
            tenant: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          user_id:,
          # The key of the guide.
          guide_key:,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              guide_key: String,
              tenant: String,
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
