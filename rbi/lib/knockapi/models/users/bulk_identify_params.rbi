# typed: strong

module Knockapi
  module Models
    module Users
      class BulkIdentifyParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[Knockapi::Models::InlineIdentifyUserRequest]) }
        def users
        end

        sig do
          params(_: T::Array[Knockapi::Models::InlineIdentifyUserRequest])
            .returns(T::Array[Knockapi::Models::InlineIdentifyUserRequest])
        end
        def users=(_)
        end

        sig do
          params(
            users: T::Array[T.any(Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Util::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
