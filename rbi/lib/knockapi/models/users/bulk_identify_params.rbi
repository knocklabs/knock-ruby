# typed: strong

module Knockapi
  module Models
    module Users
      class BulkIdentifyParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        sig { returns(T::Array[Knockapi::Models::InlineIdentifyUserRequest]) }
        attr_accessor :users

        sig do
          params(
            users: T::Array[T.any(Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Internal::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(users:, request_options: {})
        end

        sig do
          override
            .returns(
              {users: T::Array[Knockapi::Models::InlineIdentifyUserRequest], request_options: Knockapi::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
