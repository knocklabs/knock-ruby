# typed: strong

module Knock
  module Models
    class MessageEvent < Knock::BaseModel
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

      sig { returns(T.any(String, Knock::Models::MessageEvent::Recipient::ObjectReference)) }
      def recipient
      end

      sig do
        params(_: T.any(String, Knock::Models::MessageEvent::Recipient::ObjectReference))
          .returns(T.any(String, Knock::Models::MessageEvent::Recipient::ObjectReference))
      end
      def recipient=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig do
        params(
          id: String,
          _typename: String,
          inserted_at: Time,
          recipient: T.any(String, Knock::Models::MessageEvent::Recipient::ObjectReference),
          type: Symbol,
          data: T.nilable(T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(id:, _typename:, inserted_at:, recipient:, type:, data: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              inserted_at: Time,
              recipient: T.any(String, Knock::Models::MessageEvent::Recipient::ObjectReference),
              type: Symbol,
              data: T.nilable(T::Hash[Symbol, T.anything])
            }
          )
      end
      def to_hash
      end

      class Recipient < Knock::Union
        abstract!

        class ObjectReference < Knock::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def collection
          end

          sig { params(_: String).returns(String) }
          def collection=(_)
          end

          sig { params(id: String, collection: String).void }
          def initialize(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        class << self
          sig do
            override.returns([[NilClass, String], [NilClass, Knock::Models::MessageEvent::Recipient::ObjectReference]])
          end
          private def variants
          end
        end
      end

      class Type < Knock::Enum
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
