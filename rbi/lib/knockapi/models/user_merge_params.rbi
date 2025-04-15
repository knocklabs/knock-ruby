# typed: strong

module Knockapi
  module Models
    class UserMergeParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :from_user_id

      sig { params(from_user_id: String).void }
      attr_writer :from_user_id

      sig do
        params(
          from_user_id: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(from_user_id: nil, request_options: {}); end

      sig { override.returns({from_user_id: String, request_options: Knockapi::RequestOptions}) }
      def to_hash; end
    end
  end
end
