# typed: strong

module Knock
  module Models
    class UserUnsetChannelDataParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def user_id
      end

      sig { params(_: String).returns(String) }
      def user_id=(_)
      end

      sig do
        params(user_id: String, request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(user_id:, request_options: {})
      end

      sig { override.returns({user_id: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
