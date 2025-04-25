# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list
    class Message < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the message.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!attribute actors
      #   One or more actors that are associated with this message. Note: this is a list
      #   that can contain up to 10 actors if the message is produced from a
      #   [batch](/designing-workflows/batch-function).
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil]
      optional :actors, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientReference] }

      # @!attribute archived_at
      #   Timestamp when the message was archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!attribute channel_id
      #   The ID for the channel the message was sent through.
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!attribute clicked_at
      #   Timestamp when the message was clicked.
      #
      #   @return [Time, nil]
      optional :clicked_at, Time, nil?: true

      # @!attribute data
      #   Data associated with the message’s workflow run. Includes the workflow trigger
      #   request’s `data` payload merged with any additional data returned by a
      #   [fetch function](/designing-workflows/fetch-function). For messages produced
      #   after a [batch step](/designing-workflows/batch-function), includes the payload
      #   `data` from the most-recent trigger request (the final `activity` in the batch).
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute engagement_statuses
      #   A list of engagement statuses.
      #
      #   @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>, nil]
      optional :engagement_statuses,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::Message::EngagementStatus] }

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :inserted_at, Time

      # @!attribute interacted_at
      #   Timestamp when the message was interacted with.
      #
      #   @return [Time, nil]
      optional :interacted_at, Time, nil?: true

      # @!attribute link_clicked_at
      #   Timestamp when a link in the message was clicked.
      #
      #   @return [Time, nil]
      optional :link_clicked_at, Time, nil?: true

      # @!attribute metadata
      #   The metadata associated with the message.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute read_at
      #   Timestamp when the message was read.
      #
      #   @return [Time, nil]
      optional :read_at, Time, nil?: true

      # @!attribute recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (ID, collection).
      #
      #   @return [String, Knockapi::Models::RecipientReference::ObjectReference, nil]
      optional :recipient, union: -> { Knockapi::Models::RecipientReference }

      # @!attribute scheduled_at
      #   Timestamp when the message was scheduled to be sent.
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute seen_at
      #   Timestamp when the message was seen.
      #
      #   @return [Time, nil]
      optional :seen_at, Time, nil?: true

      # @!attribute source
      #   The workflow that triggered the message.
      #
      #   @return [Knockapi::Models::Message::Source, nil]
      optional :source, -> { Knockapi::Models::Message::Source }

      # @!attribute status
      #   The message delivery status.
      #
      #   @return [Symbol, Knockapi::Models::Message::Status, nil]
      optional :status, enum: -> { Knockapi::Models::Message::Status }

      # @!attribute tenant
      #   The ID of the `tenant` associated with the message. Only present when a `tenant`
      #   is provided on a workflow trigger request.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute workflow
      #   @deprecated
      #
      #   The key of the workflow that generated the message.
      #
      #   @return [String, nil]
      optional :workflow, String, nil?: true

      # @!method initialize(id: nil, _typename: nil, actors: nil, archived_at: nil, channel_id: nil, clicked_at: nil, data: nil, engagement_statuses: nil, inserted_at: nil, interacted_at: nil, link_clicked_at: nil, metadata: nil, read_at: nil, recipient: nil, scheduled_at: nil, seen_at: nil, source: nil, status: nil, tenant: nil, updated_at: nil, workflow: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::Message} for more details.
      #
      #   Represents a single message that was generated by a workflow for a given
      #   channel.
      #
      #   @param id [String] The unique identifier for the message.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param actors [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] One or more actors that are associated with this message. Note: this is a list t
      #   ...
      #
      #   @param archived_at [Time, nil] Timestamp when the message was archived.
      #
      #   @param channel_id [String] The ID for the channel the message was sent through.
      #
      #   @param clicked_at [Time, nil] Timestamp when the message was clicked.
      #
      #   @param data [Hash{Symbol=>Object}, nil] Data associated with the message’s workflow run. Includes the workflow trigger r
      #   ...
      #
      #   @param engagement_statuses [Array<Symbol, Knockapi::Models::Message::EngagementStatus>] A list of engagement statuses.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param interacted_at [Time, nil] Timestamp when the message was interacted with.
      #
      #   @param link_clicked_at [Time, nil] Timestamp when a link in the message was clicked.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata associated with the message.
      #
      #   @param read_at [Time, nil] Timestamp when the message was read.
      #
      #   @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] A reference to a recipient, either a user identifier (string) or an object refer
      #   ...
      #
      #   @param scheduled_at [Time, nil] Timestamp when the message was scheduled to be sent.
      #
      #   @param seen_at [Time, nil] Timestamp when the message was seen.
      #
      #   @param source [Knockapi::Models::Message::Source] The workflow that triggered the message.
      #
      #   @param status [Symbol, Knockapi::Models::Message::Status] The message delivery status.
      #
      #   @param tenant [String, nil] The ID of the `tenant` associated with the message. Only present when a `tenant`
      #   ...
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param workflow [String, nil] The key of the workflow that generated the message.

      # An engagement status for a message. Can be one of: read, seen, interacted,
      # link_clicked, archived.
      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Knockapi::Models::Message#source
      class Source < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute categories
        #   The categories associated with the message.
        #
        #   @return [Array<String>]
        required :categories, Knockapi::Internal::Type::ArrayOf[String]

        # @!attribute key
        #   The key of the workflow that triggered the message.
        #
        #   @return [String]
        required :key, String

        # @!attribute version_id
        #   The ID of the version of the workflow that triggered the message.
        #
        #   @return [String]
        required :version_id, String

        # @!method initialize(_typename:, categories:, key:, version_id:)
        #   The workflow that triggered the message.
        #
        #   @param _typename [String]
        #
        #   @param categories [Array<String>] The categories associated with the message.
        #
        #   @param key [String] The key of the workflow that triggered the message.
        #
        #   @param version_id [String] The ID of the version of the workflow that triggered the message.
      end

      # The message delivery status.
      #
      # @see Knockapi::Models::Message#status
      module Status
        extend Knockapi::Internal::Type::Enum

        QUEUED = :queued
        SENT = :sent
        DELIVERED = :delivered
        DELIVERY_ATTEMPTED = :delivery_attempted
        UNDELIVERED = :undelivered
        NOT_SENT = :not_sent
        BOUNCED = :bounced

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
