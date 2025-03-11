# typed: strong

module Knockapi
  module Models
    class UserMergeParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(String) }
      def from_user_id
      end

      sig { params(_: String).returns(String) }
      def from_user_id=(_)
      end

      sig do
        params(
          from_user_id: String,
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(from_user_id:, request_options: {})
      end

      sig { override.returns({from_user_id: String, request_options: Knockapi::RequestOptions}) }
      def to_hash
      end
    end
  end
end
