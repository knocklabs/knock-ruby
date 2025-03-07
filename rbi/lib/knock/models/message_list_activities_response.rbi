# typed: strong

module Knock
  module Models
    class MessageListActivitiesResponse < Knock::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(T.nilable(T.any(Knock::Models::User, Knock::Models::Object))) }
      def actor
      end

      sig do
        params(_: T.nilable(T.any(Knock::Models::User, Knock::Models::Object)))
          .returns(T.nilable(T.any(Knock::Models::User, Knock::Models::Object)))
      end
      def actor=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig { returns(T.nilable(Time)) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      sig { returns(T.nilable(T.any(Knock::Models::User, Knock::Models::Object))) }
      def recipient
      end

      sig do
        params(_: T.any(Knock::Models::User, Knock::Models::Object))
          .returns(T.any(Knock::Models::User, Knock::Models::Object))
      end
      def recipient=(_)
      end

      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          _typename: String,
          actor: T.nilable(T.any(Knock::Models::User, Knock::Models::Object)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          inserted_at: Time,
          recipient: T.any(Knock::Models::User, Knock::Models::Object),
          updated_at: Time
        )
          .void
      end
      def initialize(
        id: nil,
        _typename: nil,
        actor: nil,
        data: nil,
        inserted_at: nil,
        recipient: nil,
        updated_at: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              actor: T.nilable(T.any(Knock::Models::User, Knock::Models::Object)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              inserted_at: Time,
              recipient: T.any(Knock::Models::User, Knock::Models::Object),
              updated_at: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
