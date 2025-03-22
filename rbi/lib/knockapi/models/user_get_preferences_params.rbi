# typed: strong

module Knockapi
  module Models
    class UserGetPreferencesParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Tenant ID
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(tenant: String, request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(tenant: nil, request_options: {})
      end

      sig { override.returns({tenant: String, request_options: Knockapi::RequestOptions}) }
      def to_hash
      end
    end
  end
end
