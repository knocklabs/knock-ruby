# typed: strong

module Knockapi
  module Models
    class Tenant < Knockapi::BaseModel
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

      # A tenant entity
      sig { params(id: String, _typename: String).returns(T.attached_class) }
      def self.new(id:, _typename:)
      end

      sig { override.returns({id: String, _typename: String}) }
      def to_hash
      end
    end
  end
end
