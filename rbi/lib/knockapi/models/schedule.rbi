# typed: strong

module Knockapi
  module Models
    class Schedule < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      # A recipient, which is either a user or an object
      sig { returns(T.any(Knockapi::Models::User, Knockapi::Models::Object)) }
      def recipient
      end

      sig do
        params(_: T.any(Knockapi::Models::User, Knockapi::Models::Object))
          .returns(T.any(Knockapi::Models::User, Knockapi::Models::Object))
      end
      def recipient=(_)
      end

      sig { returns(T::Array[Knockapi::Models::ScheduleRepeatRule]) }
      def repeats
      end

      sig do
        params(_: T::Array[Knockapi::Models::ScheduleRepeatRule])
          .returns(T::Array[Knockapi::Models::ScheduleRepeatRule])
      end
      def repeats=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(String) }
      def workflow
      end

      sig { params(_: String).returns(String) }
      def workflow=(_)
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

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig { returns(T.nilable(Time)) }
      def last_occurrence_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def last_occurrence_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def next_occurrence_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def next_occurrence_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tenant=(_)
      end

      # A schedule that represents a recurring workflow execution
      sig do
        params(
          id: String,
          inserted_at: Time,
          recipient: T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object),
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Util::AnyHash)],
          updated_at: Time,
          workflow: String,
          _typename: String,
          actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          last_occurrence_at: T.nilable(Time),
          next_occurrence_at: T.nilable(Time),
          tenant: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        inserted_at:,
        recipient:,
        repeats:,
        updated_at:,
        workflow:,
        _typename: nil,
        actor: nil,
        data: nil,
        last_occurrence_at: nil,
        next_occurrence_at: nil,
        tenant: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              inserted_at: Time,
              recipient: T.any(Knockapi::Models::User, Knockapi::Models::Object),
              repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
              updated_at: Time,
              workflow: String,
              _typename: String,
              actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              last_occurrence_at: T.nilable(Time),
              next_occurrence_at: T.nilable(Time),
              tenant: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
