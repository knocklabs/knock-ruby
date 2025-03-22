# typed: strong

module Knockapi
  module Models
    class Activity < Knockapi::BaseModel
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

      # A recipient, which is either a user or an object
      sig { returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object))) }
      def actor
      end

      sig do
        params(_: T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object)))
          .returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object)))
      end
      def actor=(_)
      end

      # The data associated with the activity
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

      # A recipient, which is either a user or an object
      sig { returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object))) }
      def recipient
      end

      sig do
        params(_: T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object))
          .returns(T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object))
      end
      def recipient=(_)
      end

      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # An activity associated with a workflow run
      sig do
        params(
          id: String,
          _typename: String,
          actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          inserted_at: Time,
          recipient: T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(id: nil, _typename: nil, actor: nil, data: nil, inserted_at: nil, recipient: nil, updated_at: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              inserted_at: Time,
              recipient: T.any(Knockapi::Models::User, Knockapi::Models::Object),
              updated_at: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
