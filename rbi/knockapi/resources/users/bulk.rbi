# typed: strong

module Knockapi
  module Resources
    class Users
      class Bulk
        # Deletes multiple users in a single operation. Accepts up to 100 user IDs to
        # delete and returns a bulk operation that can be queried for progress.
        sig do
          params(
            user_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def delete(
          # A list of user IDs.
          user_ids:,
          request_options: {}
        )
        end

        # Identifies multiple users in a single operation. Allows creating or updating up
        # to 100 users in a single batch with various properties, preferences, and channel
        # data.
        sig do
          params(
            users: T::Array[Knockapi::InlineIdentifyUserRequest::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def identify(
          # A list of users.
          users:,
          request_options: {}
        )
        end

        # Sets preferences for multiple users in a single operation. Supports either
        # setting the same preferences for multiple users or specific preferences for each
        # user.
        sig do
          params(
            preferences: Knockapi::Recipients::PreferenceSetRequest::OrHash,
            user_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def set_preferences(
          # A request to set a preference set for a recipient.
          preferences:,
          # A list of user IDs.
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
