# typed: strong

module Knockapi
  module Models
    class Tenant < Knockapi::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :_typename

      # A tenant entity
      sig { params(id: String, _typename: String).returns(T.attached_class) }
      def self.new(id:, _typename:); end

      sig { override.returns({id: String, _typename: String}) }
      def to_hash; end
    end
  end
end
