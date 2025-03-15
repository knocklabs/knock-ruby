# typed: strong

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk delete users
        sig do
          params(
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(user_ids:, request_options: {})
        end

        # Bulk identifies users
        sig do
          params(
            users: T::Array[Knockapi::Models::InlineIdentifyUserRequest],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def identify(users:, request_options: {})
        end

        # Bulk set preferences
        sig do
          params(
            preferences: Knockapi::Models::Recipients::PreferenceSetRequest,
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set_preferences(preferences:, user_ids:, request_options: {})
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
