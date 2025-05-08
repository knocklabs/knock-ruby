# typed: strong

module Knockapi
  module Models
    class Message < Knockapi::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # The unique identifier for the message.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The typename of the schema.
      sig { returns(T.nilable(String)) }
      attr_reader :_typename

      sig { params(_typename: String).void }
      attr_writer :_typename

      # One or more actors that are associated with this message. Note: this is a list
      # that can contain up to 10 actors if the message is produced from a
      # [batch](/designing-workflows/batch-function).
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(String, Knockapi::RecipientReference::ObjectReference)
            ]
          )
        )
      end
      attr_reader :actors

      sig do
        params(
          actors:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ]
        ).void
      end
      attr_writer :actors

      # Timestamp when the message was archived.
      sig { returns(T.nilable(Time)) }
      attr_accessor :archived_at

      # The ID for the channel the message was sent through.
      sig { returns(T.nilable(String)) }
      attr_reader :channel_id

      sig { params(channel_id: String).void }
      attr_writer :channel_id

      # Timestamp when the message was clicked.
      sig { returns(T.nilable(Time)) }
      attr_accessor :clicked_at

      # Data associated with the message’s workflow run. Includes the workflow trigger
      # request’s `data` payload merged with any additional data returned by a
      # [fetch function](/designing-workflows/fetch-function). For messages produced
      # after a [batch step](/designing-workflows/batch-function), includes the payload
      # `data` from the most-recent trigger request (the final `activity` in the batch).
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # A list of engagement statuses.
      sig do
        returns(
          T.nilable(T::Array[Knockapi::Message::EngagementStatus::TaggedSymbol])
        )
      end
      attr_reader :engagement_statuses

      sig do
        params(
          engagement_statuses:
            T::Array[Knockapi::Message::EngagementStatus::OrSymbol]
        ).void
      end
      attr_writer :engagement_statuses

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :inserted_at

      sig { params(inserted_at: Time).void }
      attr_writer :inserted_at

      # Timestamp when the message was interacted with.
      sig { returns(T.nilable(Time)) }
      attr_accessor :interacted_at

      # Timestamp when a link in the message was clicked.
      sig { returns(T.nilable(Time)) }
      attr_accessor :link_clicked_at

      # The metadata associated with the message.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Timestamp when the message was read.
      sig { returns(T.nilable(Time)) }
      attr_accessor :read_at

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig do
        returns(
          T.nilable(
            T.any(String, Knockapi::RecipientReference::ObjectReference)
          )
        )
      end
      attr_reader :recipient

      sig do
        params(
          recipient:
            T.any(String, Knockapi::RecipientReference::ObjectReference::OrHash)
        ).void
      end
      attr_writer :recipient

      # Timestamp when the message was scheduled to be sent.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # Timestamp when the message was seen.
      sig { returns(T.nilable(Time)) }
      attr_accessor :seen_at

      # The workflow that triggered the message.
      sig { returns(T.nilable(Knockapi::Message::Source)) }
      attr_reader :source

      sig { params(source: Knockapi::Message::Source::OrHash).void }
      attr_writer :source

      # The message delivery status.
      sig { returns(T.nilable(Knockapi::Message::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Knockapi::Message::Status::OrSymbol).void }
      attr_writer :status

      # The ID of the `tenant` associated with the message. Only present when a `tenant`
      # is provided on a workflow trigger request.
      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      # The timestamp when the resource was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The key of the workflow that generated the message.
      sig { returns(T.nilable(String)) }
      attr_accessor :workflow

      # Represents a single message that was generated by a workflow for a given
      # channel.
      sig do
        params(
          id: String,
          _typename: String,
          actors:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ],
          archived_at: T.nilable(Time),
          channel_id: String,
          clicked_at: T.nilable(Time),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          engagement_statuses:
            T::Array[Knockapi::Message::EngagementStatus::OrSymbol],
          inserted_at: Time,
          interacted_at: T.nilable(Time),
          link_clicked_at: T.nilable(Time),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          read_at: T.nilable(Time),
          recipient:
            T.any(
              String,
              Knockapi::RecipientReference::ObjectReference::OrHash
            ),
          scheduled_at: T.nilable(Time),
          seen_at: T.nilable(Time),
          source: Knockapi::Message::Source::OrHash,
          status: Knockapi::Message::Status::OrSymbol,
          tenant: T.nilable(String),
          updated_at: Time,
          workflow: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the message.
        id: nil,
        # The typename of the schema.
        _typename: nil,
        # One or more actors that are associated with this message. Note: this is a list
        # that can contain up to 10 actors if the message is produced from a
        # [batch](/designing-workflows/batch-function).
        actors: nil,
        # Timestamp when the message was archived.
        archived_at: nil,
        # The ID for the channel the message was sent through.
        channel_id: nil,
        # Timestamp when the message was clicked.
        clicked_at: nil,
        # Data associated with the message’s workflow run. Includes the workflow trigger
        # request’s `data` payload merged with any additional data returned by a
        # [fetch function](/designing-workflows/fetch-function). For messages produced
        # after a [batch step](/designing-workflows/batch-function), includes the payload
        # `data` from the most-recent trigger request (the final `activity` in the batch).
        data: nil,
        # A list of engagement statuses.
        engagement_statuses: nil,
        # Timestamp when the resource was created.
        inserted_at: nil,
        # Timestamp when the message was interacted with.
        interacted_at: nil,
        # Timestamp when a link in the message was clicked.
        link_clicked_at: nil,
        # The metadata associated with the message.
        metadata: nil,
        # Timestamp when the message was read.
        read_at: nil,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        recipient: nil,
        # Timestamp when the message was scheduled to be sent.
        scheduled_at: nil,
        # Timestamp when the message was seen.
        seen_at: nil,
        # The workflow that triggered the message.
        source: nil,
        # The message delivery status.
        status: nil,
        # The ID of the `tenant` associated with the message. Only present when a `tenant`
        # is provided on a workflow trigger request.
        tenant: nil,
        # The timestamp when the resource was last updated.
        updated_at: nil,
        # The key of the workflow that generated the message.
        workflow: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            actors:
              T::Array[
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ],
            archived_at: T.nilable(Time),
            channel_id: String,
            clicked_at: T.nilable(Time),
            data: T.nilable(T::Hash[Symbol, T.anything]),
            engagement_statuses:
              T::Array[Knockapi::Message::EngagementStatus::TaggedSymbol],
            inserted_at: Time,
            interacted_at: T.nilable(Time),
            link_clicked_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            read_at: T.nilable(Time),
            recipient:
              T.any(String, Knockapi::RecipientReference::ObjectReference),
            scheduled_at: T.nilable(Time),
            seen_at: T.nilable(Time),
            source: Knockapi::Message::Source,
            status: Knockapi::Message::Status::TaggedSymbol,
            tenant: T.nilable(String),
            updated_at: Time,
            workflow: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # An engagement status for a message. Can be one of: read, seen, interacted,
      # link_clicked, archived.
      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::Message::EngagementStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEEN = T.let(:seen, Knockapi::Message::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Message::EngagementStatus::TaggedSymbol)
        INTERACTED =
          T.let(:interacted, Knockapi::Message::EngagementStatus::TaggedSymbol)
        LINK_CLICKED =
          T.let(
            :link_clicked,
            Knockapi::Message::EngagementStatus::TaggedSymbol
          )
        ARCHIVED =
          T.let(:archived, Knockapi::Message::EngagementStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::Message::EngagementStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Source < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :_typename

        # The categories associated with the message.
        sig { returns(T::Array[String]) }
        attr_accessor :categories

        # The key of the workflow that triggered the message.
        sig { returns(String) }
        attr_accessor :key

        # The ID of the version of the workflow that triggered the message.
        sig { returns(String) }
        attr_accessor :version_id

        # The workflow that triggered the message.
        sig do
          params(
            _typename: String,
            categories: T::Array[String],
            key: String,
            version_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          _typename:,
          # The categories associated with the message.
          categories:,
          # The key of the workflow that triggered the message.
          key:,
          # The ID of the version of the workflow that triggered the message.
          version_id:
        )
        end

        sig do
          override.returns(
            {
              _typename: String,
              categories: T::Array[String],
              key: String,
              version_id: String
            }
          )
        end
        def to_hash
        end
      end

      # The message delivery status.
      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Message::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Knockapi::Message::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Message::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Message::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Message::Status::TaggedSymbol)
        UNDELIVERED =
          T.let(:undelivered, Knockapi::Message::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Message::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Message::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Knockapi::Message::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
