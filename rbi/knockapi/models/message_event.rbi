# typed: strong

module Knockapi
  module Models
    class MessageEvent < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::MessageEvent, Knockapi::Internal::AnyHash)
        end

      # The unique identifier for the message event.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # Timestamp when the event was created.
      sig { returns(Time) }
      attr_accessor :inserted_at

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig { returns(Knockapi::RecipientReference::Variants) }
      attr_accessor :recipient

      # The type of event that occurred.
      sig { returns(Knockapi::MessageEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # The data associated with the message event. Only present for some event types.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # A message event. Occurs when a message
      # [delivery or engagement status](/send-notifications/message-statuses) changes.
      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient:
            T.any(
              String,
              Knockapi::RecipientReference::ObjectReference::OrHash
            ),
          type: Knockapi::MessageEvent::Type::OrSymbol,
          data: T.nilable(T::Hash[Symbol, T.anything])
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the message event.
        id:,
        # The typename of the schema.
        _typename:,
        # Timestamp when the event was created.
        inserted_at:,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        recipient:,
        # The type of event that occurred.
        type:,
        # The data associated with the message event. Only present for some event types.
        data: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            inserted_at: Time,
            recipient: Knockapi::RecipientReference::Variants,
            type: Knockapi::MessageEvent::Type::TaggedSymbol,
            data: T.nilable(T::Hash[Symbol, T.anything])
          }
        )
      end
      def to_hash
      end

      # The type of event that occurred.
      module Type
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::MessageEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE_ARCHIVED =
          T.let(:"message.archived", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_BOUNCED =
          T.let(:"message.bounced", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_DELIVERED =
          T.let(
            :"message.delivered",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_DELIVERY_ATTEMPTED =
          T.let(
            :"message.delivery_attempted",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_INTERACTED =
          T.let(
            :"message.interacted",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_LINK_CLICKED =
          T.let(
            :"message.link_clicked",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_NOT_SENT =
          T.let(:"message.not_sent", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_QUEUED =
          T.let(:"message.queued", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_READ =
          T.let(:"message.read", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SEEN =
          T.let(:"message.seen", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SENT =
          T.let(:"message.sent", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNARCHIVED =
          T.let(
            :"message.unarchived",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_UNDELIVERED =
          T.let(
            :"message.undelivered",
            Knockapi::MessageEvent::Type::TaggedSymbol
          )
        MESSAGE_UNREAD =
          T.let(:"message.unread", Knockapi::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNSEEN =
          T.let(:"message.unseen", Knockapi::MessageEvent::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Knockapi::MessageEvent::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
