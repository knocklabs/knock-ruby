# typed: strong

module Knock
  module Models
    class UserMergeParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def from_user_id
      end

      sig { params(_: String).returns(String) }
      def from_user_id=(_)
      end

      sig do
        params(
          from_user_id: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(from_user_id:, request_options: {})
      end

      sig { override.returns({from_user_id: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
