# typed: strong

module Knock
  module Models
    class Subscription < Knock::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(Time) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      sig { returns(Knock::Models::Object) }
      def object
      end

      sig { params(_: Knock::Models::Object).returns(Knock::Models::Object) }
      def object=(_)
      end

      sig { returns(T.any(Knock::Models::User, Knock::Models::Object)) }
      def recipient
      end

      sig do
        params(_: T.any(Knock::Models::User, Knock::Models::Object))
          .returns(T.any(Knock::Models::User, Knock::Models::Object))
      end
      def recipient=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def properties
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def properties=(_)
      end

      sig do
        params(
          _typename: String,
          inserted_at: Time,
          object: Knock::Models::Object,
          recipient: T.any(Knock::Models::User, Knock::Models::Object),
          updated_at: Time,
          properties: T.nilable(T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil)
      end

      sig do
        override
          .returns(
            {
              _typename: String,
              inserted_at: Time,
              object: Knock::Models::Object,
              recipient: T.any(Knock::Models::User, Knock::Models::Object),
              updated_at: Time,
              properties: T.nilable(T::Hash[Symbol, T.anything])
            }
          )
      end
      def to_hash
      end
    end
  end
end
