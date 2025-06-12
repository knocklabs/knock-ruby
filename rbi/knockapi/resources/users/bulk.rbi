# typed: strong

module Knockapi
  module Resources
    class Users
      class Bulk
        # Permanently deletes up to 1,000 users at a time.
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
        # to 1,000 users in a single batch with various properties, preferences, and
        # channel data.
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

        # Bulk sets the preferences for up to 1,000 users at a time. The preference
        # set `:id` can be either `default` or a `tenant.id`. Learn more
        # about [per-tenant preferences](/preferences/tenant-preferences). Note that this
        # is a destructive operation and will replace any existing users' preferences with
        # the preferences sent.
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
