# typed: strong

module Knockapi
  module Models
    class UserMergeParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The user ID to merge from.
      sig { returns(String) }
      attr_accessor :from_user_id

      sig do
        params(
          from_user_id: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(from_user_id:, request_options: {}); end

      sig { override.returns({from_user_id: String, request_options: Knockapi::RequestOptions}) }
      def to_hash; end
    end
  end
end
