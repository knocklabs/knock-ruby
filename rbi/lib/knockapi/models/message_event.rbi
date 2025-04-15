# typed: strong

module Knockapi
  module Models
    class MessageEvent < Knockapi::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(Time) }
      attr_accessor :inserted_at

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      sig { returns(T.any(String, Knockapi::Models::MessageEvent::Recipient::UnionMember1)) }
      attr_accessor :recipient

      sig { returns(Knockapi::Models::MessageEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # The data associated with the event. Only present for some event types
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

      # A single event that occurred for a message
      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::UnionMember1, Knockapi::Internal::AnyHash),
          type: Knockapi::Models::MessageEvent::Type::OrSymbol,
          data: T.nilable(T.anything)
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
              recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::UnionMember1),
              type: Knockapi::Models::MessageEvent::Type::TaggedSymbol,
              data: T.nilable(T.anything)
            }
          )
      end
      def to_hash; end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        class UnionMember1 < Knockapi::Internal::Type::BaseModel
          # An object identifier
          sig { returns(String) }
          attr_accessor :id

          # The collection the object belongs to
          sig { returns(String) }
          attr_accessor :collection

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::MessageEvent::Recipient::UnionMember1]) }
        def self.variants; end
      end

      module Type
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Knockapi::Models::MessageEvent::Type::TaggedSymbol) }

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

        sig { override.returns(T::Array[Knockapi::Models::MessageEvent::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
