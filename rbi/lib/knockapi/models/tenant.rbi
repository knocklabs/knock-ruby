# typed: strong

module Knockapi
  module Models
    class Tenant < Knockapi::Internal::Type::BaseModel
      # The unique identifier for the tenant.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # An optional name for the tenant.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The settings for the tenant. Includes branding and preference set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :settings

      # A tenant entity.
      sig do
        params(id: String, _typename: String, name: T.nilable(String), settings: T.nilable(T.anything))
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, name: nil, settings: nil); end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            name: T.nilable(String),
            settings: T.nilable(T.anything)
          }
        )
      end
      def to_hash; end
    end
  end
end
