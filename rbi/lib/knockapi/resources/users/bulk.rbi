# typed: strong

module Knockapi
  module Resources
    class Users
      class Bulk
        # Bulk deletes a list of users
        sig do
          params(
            user_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The IDs of the users to delete
          user_ids:,
          request_options: {}
        ); end
        # Bulk identifies a list of users
        sig do
          params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
            .returns(Knockapi::Models::BulkOperation)
        end
        def identify(request_options: {}); end

        # Bulk sets user preferences
        sig do
          params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
            .returns(Knockapi::Models::BulkOperation)
        end
        def set_preferences(request_options: {}); end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
