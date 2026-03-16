# typed: strong

module Knockapi
  module Models
    class UserMergeParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::UserMergeParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :user_id

      # The user ID to merge from.
      sig { returns(String) }
      attr_accessor :from_user_id

      sig do
        params(
          user_id: String,
          from_user_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        user_id:,
        # The user ID to merge from.
        from_user_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            from_user_id: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
