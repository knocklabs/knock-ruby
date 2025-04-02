# typed: strong

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk delete users
        sig do
          params(
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(user_ids:, request_options: {})
        end

        # Bulk identifies users
        sig do
          params(
            users: T::Array[T.any(Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Util::AnyHash)],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def identify(users:, request_options: {})
        end

        # Bulk set preferences
        sig do
          params(
            preferences: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash),
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set_preferences(
          # Set preferences for a recipient
          preferences:,
          user_ids:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
