# typed: strong

module Knock
  module Models
    module Users
      class BulkIdentifyParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[Knock::Models::InlineIdentifyUserRequest]) }
        def users
        end

        sig do
          params(_: T::Array[Knock::Models::InlineIdentifyUserRequest])
            .returns(T::Array[Knock::Models::InlineIdentifyUserRequest])
        end
        def users=(_)
        end

        sig do
          params(
            users: T::Array[Knock::Models::InlineIdentifyUserRequest],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(users:, request_options: {})
        end

        sig do
          override
            .returns(
              {users: T::Array[Knock::Models::InlineIdentifyUserRequest], request_options: Knock::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
