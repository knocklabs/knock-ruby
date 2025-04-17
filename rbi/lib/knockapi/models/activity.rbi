# typed: strong

module Knockapi
  module Models
    class Activity < Knockapi::Internal::Type::BaseModel
      # Unique identifier for the activity.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The typename of the schema.
      sig { returns(T.nilable(String)) }
      attr_reader :_typename

      sig { params(_typename: String).void }
      attr_writer :_typename

      # A recipient of a notification, which is either a user or an object.
      sig { returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object))) }
      attr_accessor :actor

      # The data associated with the activity.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :inserted_at

      sig { params(inserted_at: Time).void }
      attr_writer :inserted_at

      # A recipient of a notification, which is either a user or an object.
      sig { returns(T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object))) }
      attr_reader :recipient

      sig do
        params(recipient: T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash, Knockapi::Models::Object))
          .void
      end
      attr_writer :recipient

      # The timestamp when the resource was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # An activity associated with a workflow run.
      sig do
        params(
          id: String,
          _typename: String,
          actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash, Knockapi::Models::Object)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          inserted_at: Time,
          recipient: T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash, Knockapi::Models::Object),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              actor: T.nilable(T.any(Knockapi::Models::User, Knockapi::Models::Object)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              inserted_at: Time,
              recipient: T.any(Knockapi::Models::User, Knockapi::Models::Object),
              updated_at: Time
            }
          )
      end
      def to_hash; end
    end
  end
end
