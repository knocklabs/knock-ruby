# typed: strong

module Knockapi
  module Models
    class UserGetPreferencesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The unique identifier for the tenant.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(tenant: String, request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the tenant.
        tenant: nil,
        request_options: {}
      ); end
      sig { override.returns({tenant: String, request_options: Knockapi::RequestOptions}) }
      def to_hash; end
    end
  end
end
