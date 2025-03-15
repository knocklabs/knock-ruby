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

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          recipient: T.any(String, Knockapi::Models::MessageEvent::Recipient::ObjectReference),
          type: Symbol,
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
              type: Symbol,
              data: T.nilable(T::Hash[Symbol, T.anything])
            }
          )
      end
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        abstract!

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

      class Type < Knockapi::Enum
        abstract!

        MESSAGE_QUEUED = :"message.queued"
        MESSAGE_SENT = :"message.sent"
        MESSAGE_DELIVERED = :"message.delivered"
        MESSAGE_UNDELIVERED = :"message.undelivered"
        MESSAGE_BOUNCED = :"message.bounced"
        MESSAGE_READ = :"message.read"
        MESSAGE_UNREAD = :"message.unread"
        MESSAGE_LINK_CLICKED = :"message.link_clicked"
        MESSAGE_INTERACTED = :"message.interacted"
        MESSAGE_SEEN = :"message.seen"
        MESSAGE_UNSEEN = :"message.unseen"
        MESSAGE_ARCHIVED = :"message.archived"
        MESSAGE_UNARCHIVED = :"message.unarchived"

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
