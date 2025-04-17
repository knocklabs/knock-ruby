# typed: strong

module Knockapi
  module Models
    class Object < Knockapi::Internal::Type::BaseModel
      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The type name of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The collection this object belongs to.
      sig { returns(String) }
      attr_accessor :collection

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # A custom object entity which belongs to a collection.
      sig do
        params(
          id: String,
          _typename: String,
          collection: String,
          updated_at: Time,
          created_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, collection:, updated_at:, created_at: nil); end

      sig do
        override
          .returns(
            {id: String, _typename: String, collection: String, updated_at: Time, created_at: T.nilable(Time)}
          )
      end
      def to_hash; end
    end
  end
end
