# typed: strong

module Knock
  module Resources
    class Users
      class Bulk
        sig do
          params(
            body_user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Users::BulkDeleteResponse)
        end
        def delete(body_user_ids:, request_options: {})
        end

        sig do
          params(
            users: T::Array[Knock::Models::InlineIdentifyUserRequest],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Users::BulkIdentifyResponse)
        end
        def identify(users:, request_options: {})
        end

        sig do
          params(
            preferences: Knock::Models::PreferenceSetRequest,
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Users::BulkSetPreferencesResponse)
        end
        def set_preferences(preferences:, user_ids:, request_options: {})
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
