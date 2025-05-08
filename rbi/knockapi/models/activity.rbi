# typed: strong

module Knockapi
  module Models
    class Activity < Knockapi::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
      sig { returns(T.nilable(T.any(Knockapi::User, Knockapi::Object))) }
      attr_accessor :actor

      # The workflow trigger `data` payload associated with the activity.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # Timestamp when the activity was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :inserted_at

      sig { params(inserted_at: Time).void }
      attr_writer :inserted_at

      # A recipient of a notification, which is either a user or an object.
      sig { returns(T.nilable(T.any(Knockapi::User, Knockapi::Object))) }
      attr_reader :recipient

      sig do
        params(
          recipient: T.any(Knockapi::User::OrHash, Knockapi::Object::OrHash)
        ).void
      end
      attr_writer :recipient

      # Timestamp when the activity was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # An activity associated with a workflow trigger request. Messages produced after
      # a [batch step](/designing-workflows/batch-function) can be associated with one
      # or more activities. Non-batched messages will always be associated with a single
      # activity.
      sig do
        params(
          id: String,
          _typename: String,
          actor:
            T.nilable(T.any(Knockapi::User::OrHash, Knockapi::Object::OrHash)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          inserted_at: Time,
          recipient: T.any(Knockapi::User::OrHash, Knockapi::Object::OrHash),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the activity.
        id: nil,
        # The typename of the schema.
        _typename: nil,
        # A recipient of a notification, which is either a user or an object.
        actor: nil,
        # The workflow trigger `data` payload associated with the activity.
        data: nil,
        # Timestamp when the activity was created.
        inserted_at: nil,
        # A recipient of a notification, which is either a user or an object.
        recipient: nil,
        # Timestamp when the activity was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            actor: T.nilable(T.any(Knockapi::User, Knockapi::Object)),
            data: T.nilable(T::Hash[Symbol, T.anything]),
            inserted_at: Time,
            recipient: T.any(Knockapi::User, Knockapi::Object),
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
