# typed: strong

module Knock
  module Models
    class UserSetPreferencesParams < Knock::Models::PreferenceSetRequest
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def user_id
      end

      sig { params(_: String).returns(String) }
      def user_id=(_)
      end

      sig do
        params(
          user_id: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(user_id:, request_options: {})
      end

      sig { override.returns({user_id: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
