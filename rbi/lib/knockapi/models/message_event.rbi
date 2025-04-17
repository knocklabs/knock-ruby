# typed: strong

module Knockapi
  module Models
    class MessageEvent < Knockapi::Internal::Type::BaseModel
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
      # reference (id, collection).
      sig { returns(T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference)) }
      attr_accessor :recipient

      # The type of event that occurred.
      sig { returns(Knockapi::Models::MessageEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # The data associated with the message event. Only present for some event types.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # A message event.
      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference, Knockapi::Internal::AnyHash),
          type: Knockapi::Models::MessageEvent::Type::OrSymbol,
          data: T.nilable(T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, inserted_at:, recipient:, type:, data: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              inserted_at: Time,
              recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference),
              type: Knockapi::Models::MessageEvent::Type::TaggedSymbol,
              data: T.nilable(T::Hash[Symbol, T.anything])
            }
          )
      end
      def to_hash; end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # An identifier for the recipient object.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The collection the recipient object belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A reference to a recipient object.
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id: nil, collection: nil); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::MessageEvent::Recipient::ObjectReference]) }
        def self.variants; end
      end

      # The type of event that occurred.
      module Type
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Knockapi::Models::MessageEvent::Type::TaggedSymbol) }

        MESSAGE_ARCHIVED = T.let(:"message.archived", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_BOUNCED = T.let(:"message.bounced", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_DELIVERED = T.let(:"message.delivered", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_DELIVERY_ATTEMPTED =
          T.let(:"message.delivery_attempted", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_INTERACTED = T.let(:"message.interacted", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_LINK_CLICKED = T.let(:"message.link_clicked", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_NOT_SENT = T.let(:"message.not_sent", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_QUEUED = T.let(:"message.queued", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_READ = T.let(:"message.read", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SEEN = T.let(:"message.seen", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SENT = T.let(:"message.sent", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNARCHIVED = T.let(:"message.unarchived", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNDELIVERED = T.let(:"message.undelivered", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNREAD = T.let(:"message.unread", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNSEEN = T.let(:"message.unseen", Knockapi::Models::MessageEvent::Type::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::MessageEvent::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
