# typed: strong

module Knock
  module Models
    class Tenant < Knock::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { params(id: String, _typename: String).void }
      def initialize(id:, _typename:)
      end

      sig { override.returns({id: String, _typename: String}) }
      def to_hash
      end
    end
  end
end
