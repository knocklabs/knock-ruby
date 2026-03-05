# typed: strong

module Knockapi
  module Models
    class AudienceListMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::AudienceListMembersParams,
            Knockapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :key

      sig do
        params(
          key: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(key:, request_options: {})
      end

      sig do
        override.returns(
          { key: String, request_options: Knockapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
