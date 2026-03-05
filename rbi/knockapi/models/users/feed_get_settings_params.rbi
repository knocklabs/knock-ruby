# typed: strong

module Knockapi
  module Models
    module Users
      class FeedGetSettingsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::FeedGetSettingsParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            user_id: String,
            id: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(user_id:, id:, request_options: {})
        end

        sig do
          override.returns(
            {
              user_id: String,
              id: String,
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
