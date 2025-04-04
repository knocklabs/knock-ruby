# typed: strong

module Knockapi
  module Models
    class Object < Knockapi::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(String) }
      attr_accessor :collection

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # A custom-object entity which belongs to a collection.
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
      def self.new(id:, _typename:, collection:, updated_at:, created_at: nil)
      end

      sig do
        override
          .returns(
            {id: String, _typename: String, collection: String, updated_at: Time, created_at: T.nilable(Time)}
          )
      end
      def to_hash
      end
    end
  end
end
