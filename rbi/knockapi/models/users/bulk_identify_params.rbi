# typed: strong

module Knockapi
  module Models
    module Users
      class BulkIdentifyParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::BulkIdentifyParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of users.
        sig { returns(T::Array[Knockapi::InlineIdentifyUserRequest]) }
        attr_accessor :users

        sig do
          params(
            users: T::Array[Knockapi::InlineIdentifyUserRequest::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of users.
          users:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              users: T::Array[Knockapi::InlineIdentifyUserRequest],
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
