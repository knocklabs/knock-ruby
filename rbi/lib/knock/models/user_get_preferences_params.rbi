# typed: strong

module Knock
  module Models
    class UserGetPreferencesParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def user_id
      end

      sig { params(_: String).returns(String) }
      def user_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      sig do
        params(
          user_id: String,
          tenant: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(user_id:, tenant: nil, request_options: {})
      end

      sig { override.returns({user_id: String, tenant: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
