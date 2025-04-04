# typed: strong

module Knockapi
  module Models
    class Schedule < Knockapi::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :inserted_at

      # A recipient, which is either a user or an object
      sig { returns(T.any(Knockapi::Models::User, Knockapi::Models::Object)) }
      attr_accessor :recipient

      sig { returns(T::Array[Knockapi::Models::ScheduleRepeatRule]) }
      attr_accessor :repeats

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :workflow

      sig { returns(T.nilable(String)) }
      attr_reader :_typename

      sig { params(_typename: String).void }
      attr_writer :_typename

      # A recipient, which is either a user or an object
      sig { returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object))) }
      attr_accessor :actor

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      sig { returns(T.nilable(Time)) }
      attr_accessor :last_occurrence_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :next_occurrence_at

      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      # A schedule that represents a recurring workflow execution
      sig do
        params(
          id: String,
          inserted_at: Time,
          recipient: T.any(Knockapi::Models::User, Knockapi::Internal::Util::AnyHash, Knockapi::Models::Object),
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::Util::AnyHash)],
          updated_at: Time,
          workflow: String,
          _typename: String,
          actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Internal::Util::AnyHash, Knockapi::Models::Object)),
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
