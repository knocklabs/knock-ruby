# typed: strong

module Knock
  module Models
    class ObjectListPreferencesParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

      sig do
        params(
          collection: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(collection:, request_options: {})
      end

      sig { override.returns({collection: String, request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
