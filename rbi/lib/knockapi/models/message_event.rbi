# typed: strong

module Knockapi
  module Models
    class MessageEvent < Knockapi::BaseModel
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

      sig { returns(Time) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      sig { returns(T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference)) }
      def recipient
      end

      sig do
        params(_: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference))
          .returns(T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference))
      end
      def recipient=(_)
      end

      sig { returns(Knockapi::Models::MessageEvent::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Knockapi::Models::MessageEvent::Type::TaggedSymbol)
          .returns(Knockapi::Models::MessageEvent::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # The data associated with the event. Only present for some event types
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      # A single event that occurred for a message
      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference, Knockapi::Util::AnyHash),
          type: Knockapi::Models::MessageEvent::Type::OrSymbol,
          data: T.nilable(T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, inserted_at:, recipient:, type:, data: nil)
      end

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
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        Variants =
          type_template(:out) { {fixed: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference)} }

        class ObjectReference < Knockapi::BaseModel
          # An object identifier
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The collection the object belongs to
          sig { returns(String) }
          def collection
          end

          sig { params(_: String).returns(String) }
          def collection=(_)
          end

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        class << self
          sig { override.returns([String, Knockapi::Models::MessageEvent::Recipient::ObjectReference]) }
          def variants
          end
        end
      end

      module Type
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::MessageEvent::Type::TaggedSymbol) }

        MESSAGE_QUEUED = T.let(:"message.queued", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SENT = T.let(:"message.sent", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_DELIVERED = T.let(:"message.delivered", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNDELIVERED = T.let(:"message.undelivered", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_BOUNCED = T.let(:"message.bounced", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_READ = T.let(:"message.read", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNREAD = T.let(:"message.unread", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_LINK_CLICKED = T.let(:"message.link_clicked", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_INTERACTED = T.let(:"message.interacted", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_SEEN = T.let(:"message.seen", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNSEEN = T.let(:"message.unseen", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_ARCHIVED = T.let(:"message.archived", Knockapi::Models::MessageEvent::Type::TaggedSymbol)
        MESSAGE_UNARCHIVED = T.let(:"message.unarchived", Knockapi::Models::MessageEvent::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::MessageEvent::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
