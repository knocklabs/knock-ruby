# typed: strong

module Knockapi
  module Models
    class UserGetPreferencesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # The unique identifier for the tenant.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(
          tenant: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the tenant.
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { tenant: String, request_options: Knockapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
