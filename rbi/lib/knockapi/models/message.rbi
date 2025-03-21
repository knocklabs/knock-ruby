# typed: strong

module Knockapi
  module Models
    class Message < Knockapi::BaseModel
      # The message ID
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

      # A list of actor representations associated with the message (up to 10)
      sig { returns(T.nilable(T::Array[T.any(String, Knockapi::Models::Message::Actor::ObjectReference)])) }
      def actors
      end

      sig do
        params(_: T::Array[T.any(String, Knockapi::Models::Message::Actor::ObjectReference)])
          .returns(T::Array[T.any(String, Knockapi::Models::Message::Actor::ObjectReference)])
      end
      def actors=(_)
      end

      # Timestamp when message was archived
      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def archived_at=(_)
      end

      # Channel ID associated with the message
      sig { returns(T.nilable(String)) }
      def channel_id
      end

      sig { params(_: String).returns(String) }
      def channel_id=(_)
      end

      # Timestamp when message was clicked
      sig { returns(T.nilable(Time)) }
      def clicked_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def clicked_at=(_)
      end

      # Additional message data
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      # List of engagement statuses
      sig { returns(T.nilable(T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol])) }
      def engagement_statuses
      end

      sig do
        params(_: T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol])
          .returns(T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol])
      end
      def engagement_statuses=(_)
      end

      # Timestamp of creation
      sig { returns(T.nilable(Time)) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      # Timestamp when message was interacted with
      sig { returns(T.nilable(Time)) }
      def interacted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def interacted_at=(_)
      end

      # Timestamp when a link in the message was clicked
      sig { returns(T.nilable(Time)) }
      def link_clicked_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def link_clicked_at=(_)
      end

      # Message metadata
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def metadata=(_)
      end

      # Timestamp when message was read
      sig { returns(T.nilable(Time)) }
      def read_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def read_at=(_)
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      sig { returns(T.nilable(T.any(String, Knockapi::Models::Message::Recipient::ObjectReference))) }
      def recipient
      end

      sig do
        params(_: T.any(String, Knockapi::Models::Message::Recipient::ObjectReference))
          .returns(T.any(String, Knockapi::Models::Message::Recipient::ObjectReference))
      end
      def recipient=(_)
      end

      # Timestamp when message was scheduled for
      sig { returns(T.nilable(Time)) }
      def scheduled_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_at=(_)
      end

      # Timestamp when message was seen
      sig { returns(T.nilable(Time)) }
      def seen_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def seen_at=(_)
      end

      # Source information
      sig { returns(T.nilable(Knockapi::Models::Message::Source)) }
      def source
      end

      sig do
        params(_: T.any(Knockapi::Models::Message::Source, Knockapi::Util::AnyHash))
          .returns(T.any(Knockapi::Models::Message::Source, Knockapi::Util::AnyHash))
      end
      def source=(_)
      end

      # Message delivery status
      sig { returns(T.nilable(Knockapi::Models::Message::Status::TaggedSymbol)) }
      def status
      end

      sig do
        params(_: Knockapi::Models::Message::Status::TaggedSymbol)
          .returns(Knockapi::Models::Message::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # Tenant ID that the message belongs to
      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tenant=(_)
      end

      # Timestamp of last update
      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Workflow key used to create the message
      sig { returns(T.nilable(String)) }
      def workflow
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def workflow=(_)
      end

      # Represents a single message that was generated by a workflow for a given
      #   channel.
      sig do
        params(
          id: String,
          _typename: String,
          actors: T::Array[T.any(String, Knockapi::Models::Message::Actor::ObjectReference)],
          archived_at: T.nilable(Time),
          channel_id: String,
          clicked_at: T.nilable(Time),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          engagement_statuses: T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol],
          inserted_at: Time,
          interacted_at: T.nilable(Time),
          link_clicked_at: T.nilable(Time),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          read_at: T.nilable(Time),
          recipient: T.any(String, Knockapi::Models::Message::Recipient::ObjectReference),
          scheduled_at: T.nilable(Time),
          seen_at: T.nilable(Time),
          source: T.any(Knockapi::Models::Message::Source, Knockapi::Util::AnyHash),
          status: Knockapi::Models::Message::Status::TaggedSymbol,
          tenant: T.nilable(String),
          updated_at: Time,
          workflow: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              actors: T::Array[T.any(String, Knockapi::Models::Message::Actor::ObjectReference)],
              archived_at: T.nilable(Time),
              channel_id: String,
              clicked_at: T.nilable(Time),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              engagement_statuses: T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol],
              inserted_at: Time,
              interacted_at: T.nilable(Time),
              link_clicked_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              read_at: T.nilable(Time),
              recipient: T.any(String, Knockapi::Models::Message::Recipient::ObjectReference),
              scheduled_at: T.nilable(Time),
              seen_at: T.nilable(Time),
              source: Knockapi::Models::Message::Source,
              status: Knockapi::Models::Message::Status::TaggedSymbol,
              tenant: T.nilable(String),
              updated_at: Time,
              workflow: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Actor
        extend Knockapi::Union

        Variants =
          type_template(:out) { {fixed: T.any(String, Knockapi::Models::Message::Actor::ObjectReference)} }

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
          sig { override.returns([String, Knockapi::Models::Message::Actor::ObjectReference]) }
          def variants
          end
        end
      end

      module EngagementStatus
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Message::EngagementStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::Message::EngagementStatus::TaggedSymbol) }

        SEEN = T.let(:seen, Knockapi::Models::Message::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Models::Message::EngagementStatus::TaggedSymbol)
        INTERACTED = T.let(:interacted, Knockapi::Models::Message::EngagementStatus::TaggedSymbol)
        LINK_CLICKED = T.let(:link_clicked, Knockapi::Models::Message::EngagementStatus::TaggedSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::Message::EngagementStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::Message::EngagementStatus::TaggedSymbol]) }
          def values
          end
        end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        Variants =
          type_template(:out) { {fixed: T.any(String, Knockapi::Models::Message::Recipient::ObjectReference)} }

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
          sig { override.returns([String, Knockapi::Models::Message::Recipient::ObjectReference]) }
          def variants
          end
        end
      end

      class Source < Knockapi::BaseModel
        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        # The workflow categories
        sig { returns(T::Array[String]) }
        def categories
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def categories=(_)
        end

        # The workflow key
        sig { returns(String) }
        def key
        end

        sig { params(_: String).returns(String) }
        def key=(_)
        end

        # The source version ID
        sig { returns(String) }
        def version_id
        end

        sig { params(_: String).returns(String) }
        def version_id=(_)
        end

        # Source information
        sig do
          params(_typename: String, categories: T::Array[String], key: String, version_id: String)
            .returns(T.attached_class)
        end
        def self.new(_typename:, categories:, key:, version_id:)
        end

        sig do
          override.returns({_typename: String, categories: T::Array[String], key: String, version_id: String})
        end
        def to_hash
        end
      end

      # Message delivery status
      module Status
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Message::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::Message::Status::TaggedSymbol) }

        QUEUED = T.let(:queued, Knockapi::Models::Message::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Models::Message::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::Message::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED = T.let(:delivery_attempted, Knockapi::Models::Message::Status::TaggedSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::Message::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::Message::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::Message::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::Message::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
