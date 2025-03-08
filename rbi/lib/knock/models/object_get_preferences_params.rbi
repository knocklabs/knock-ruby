# typed: strong

module Knock
  module Models
    class ObjectGetPreferencesParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      sig do
        params(tenant: String, request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(tenant: nil, request_options: {})
      end

      sig { override.returns({tenant: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
