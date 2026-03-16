# typed: strong

module Knockapi
  module Models
    class UserGetPreferencesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::UserGetPreferencesParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(String) }
      attr_accessor :id

      # The unique identifier for the tenant.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(
          user_id: String,
          id: String,
          tenant: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        user_id:,
        id:,
        # The unique identifier for the tenant.
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            id: String,
            tenant: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
