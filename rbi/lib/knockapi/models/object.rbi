# typed: strong

module Knockapi
  module Models
    class Object < Knockapi::BaseModel
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

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at=(_)
      end

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
