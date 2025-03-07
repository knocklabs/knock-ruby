# typed: strong

module Knock
  module Models
    class MessageListResponse < Knock::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(T.nilable(T::Array[T.any(String, Knock::Models::MessageListResponse::Actor::ObjectReference)])) }
      def actors
      end

      sig do
        params(_: T::Array[T.any(String, Knock::Models::MessageListResponse::Actor::ObjectReference)])
          .returns(T::Array[T.any(String, Knock::Models::MessageListResponse::Actor::ObjectReference)])
      end
      def actors=(_)
      end

      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def archived_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def channel_id
      end

      sig { params(_: String).returns(String) }
      def channel_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def clicked_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def clicked_at=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def engagement_statuses
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def engagement_statuses=(_)
      end

      sig { returns(T.nilable(Time)) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def interacted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def interacted_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def link_clicked_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def link_clicked_at=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(Time)) }
      def read_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def read_at=(_)
      end

      sig { returns(T.nilable(T.any(String, Knock::Models::MessageListResponse::Recipient::ObjectReference))) }
      def recipient
      end

      sig do
        params(_: T.any(String, Knock::Models::MessageListResponse::Recipient::ObjectReference))
          .returns(T.any(String, Knock::Models::MessageListResponse::Recipient::ObjectReference))
      end
      def recipient=(_)
      end

      sig { returns(T.nilable(Time)) }
      def scheduled_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def seen_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def seen_at=(_)
      end

      sig { returns(T.nilable(Knock::Models::MessageListResponse::Source)) }
      def source
      end

      sig { params(_: Knock::Models::MessageListResponse::Source).returns(Knock::Models::MessageListResponse::Source) }
      def source=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tenant=(_)
      end

      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def workflow
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def workflow=(_)
      end

      sig do
        params(
          id: String,
          _typename: String,
          actors: T::Array[T.any(String, Knock::Models::MessageListResponse::Actor::ObjectReference)],
          archived_at: T.nilable(Time),
          channel_id: String,
          clicked_at: T.nilable(Time),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          engagement_statuses: T::Array[Symbol],
          inserted_at: Time,
          interacted_at: T.nilable(Time),
          link_clicked_at: T.nilable(Time),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          read_at: T.nilable(Time),
          recipient: T.any(String, Knock::Models::MessageListResponse::Recipient::ObjectReference),
          scheduled_at: T.nilable(Time),
          seen_at: T.nilable(Time),
          source: Knock::Models::MessageListResponse::Source,
          status: Symbol,
          tenant: T.nilable(String),
          updated_at: Time,
          workflow: T.nilable(String)
        )
          .void
      end
      def initialize(
        id: nil,
        _typename: nil,
        actors: nil,
        archived_at: nil,
        channel_id: nil,
        clicked_at: nil,
        data: nil,
        engagement_statuses: nil,
        inserted_at: nil,
        interacted_at: nil,
        link_clicked_at: nil,
        metadata: nil,
        read_at: nil,
        recipient: nil,
        scheduled_at: nil,
        seen_at: nil,
        source: nil,
        status: nil,
        tenant: nil,
        updated_at: nil,
        workflow: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              actors: T::Array[T.any(String, Knock::Models::MessageListResponse::Actor::ObjectReference)],
              archived_at: T.nilable(Time),
              channel_id: String,
              clicked_at: T.nilable(Time),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              engagement_statuses: T::Array[Symbol],
              inserted_at: Time,
              interacted_at: T.nilable(Time),
              link_clicked_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              read_at: T.nilable(Time),
              recipient: T.any(String, Knock::Models::MessageListResponse::Recipient::ObjectReference),
              scheduled_at: T.nilable(Time),
              seen_at: T.nilable(Time),
              source: Knock::Models::MessageListResponse::Source,
              status: Symbol,
              tenant: T.nilable(String),
              updated_at: Time,
              workflow: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Actor < Knock::Union
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
            override
              .returns([[NilClass, String], [NilClass, Knock::Models::MessageListResponse::Actor::ObjectReference]])
          end
          private def variants
          end
        end
      end

      class EngagementStatus < Knock::Enum
        abstract!

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
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
            override
              .returns([[NilClass, String], [NilClass, Knock::Models::MessageListResponse::Recipient::ObjectReference]])
          end
          private def variants
          end
        end
      end

      class Source < Knock::BaseModel
        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        sig { returns(T::Array[String]) }
        def categories
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def categories=(_)
        end

        sig { returns(String) }
        def key
        end

        sig { params(_: String).returns(String) }
        def key=(_)
        end

        sig { returns(String) }
        def version_id
        end

        sig { params(_: String).returns(String) }
        def version_id=(_)
        end

        sig { params(_typename: String, categories: T::Array[String], key: String, version_id: String).void }
        def initialize(_typename:, categories:, key:, version_id:)
        end

        sig do
          override.returns({_typename: String, categories: T::Array[String], key: String, version_id: String})
        end
        def to_hash
        end
      end

      class Status < Knock::Enum
        abstract!

        QUEUED = :queued
        SENT = :sent
        DELIVERED = :delivered
        DELIVERY_ATTEMPTED = :delivery_attempted
        UNDELIVERED = :undelivered
        NOT_SENT = :not_sent
        BOUNCED = :bounced

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
