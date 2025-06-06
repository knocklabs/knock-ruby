# typed: strong

module Knockapi
  module Models
    class Object < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Knockapi::Object, Knockapi::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
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

      # The custom properties associated with the object.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :properties

      sig { params(properties: T::Hash[Symbol, T.anything]).void }
      attr_writer :properties

      # A custom [Object](/concepts/objects) entity which belongs to a collection.
      sig do
        params(
          id: String,
          _typename: String,
          collection: String,
          updated_at: Time,
          created_at: T.nilable(Time),
          properties: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The typename of the schema.
        _typename:,
        # The collection this object belongs to.
        collection:,
        # The timestamp when the resource was last updated.
        updated_at:,
        # Timestamp when the resource was created.
        created_at: nil,
        # The custom properties associated with the object.
        properties: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            collection: String,
            updated_at: Time,
            created_at: T.nilable(Time),
            properties: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
