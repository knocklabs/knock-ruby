# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list
    class Message < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the message.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute channel_id
      #   @deprecated
      #
      #   Deprecated, use channel.id instead.
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute engagement_statuses
      #   A list of engagement statuses.
      #
      #   @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>]
      required :engagement_statuses,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus] }

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (ID, collection).
      #
      #   @return [String, Knockapi::Models::RecipientReference::ObjectReference]
      required :recipient, union: -> { Knockapi::RecipientReference }

      # @!attribute source
      #   The workflow or guide that triggered the message.
      #
      #   @return [Knockapi::Models::Message::Source]
      required :source, -> { Knockapi::Message::Source }

      # @!attribute status
      #   The message delivery status.
      #
      #   @return [Symbol, Knockapi::Models::Message::Status]
      required :status, enum: -> { Knockapi::Message::Status }

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute actors
      #   One or more actors that are associated with this message. Note: this is a list
      #   that can contain up to 10 actors if the message is produced from a
      #   [batch](/designing-workflows/batch-function).
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil]
      optional :actors, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference] }

      # @!attribute archived_at
      #   Timestamp when the message was archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!attribute channel
      #   A configured channel, which is a way to route messages to a provider.
      #
      #   @return [Knockapi::Models::Message::Channel, nil]
      optional :channel, -> { Knockapi::Message::Channel }

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

      # @!attribute tenant
      #   The ID of the `tenant` associated with the message. Only present when a `tenant`
      #   is provided on a workflow trigger request.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!attribute workflow
      #   @deprecated
      #
      #   The key of the workflow that generated the message.
      #
      #   @return [String, nil]
      optional :workflow, String, nil?: true

      # @!method initialize(id:, _typename:, channel_id:, engagement_statuses:, inserted_at:, recipient:, source:, status:, updated_at:, actors: nil, archived_at: nil, channel: nil, clicked_at: nil, data: nil, interacted_at: nil, link_clicked_at: nil, metadata: nil, read_at: nil, scheduled_at: nil, seen_at: nil, tenant: nil, workflow: nil)
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
      #   @param channel_id [String] Deprecated, use channel.id instead.
      #
      #   @param engagement_statuses [Array<Symbol, Knockapi::Models::Message::EngagementStatus>] A list of engagement statuses.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] A reference to a recipient, either a user identifier (string) or an object refer
      #
      #   @param source [Knockapi::Models::Message::Source] The workflow or guide that triggered the message.
      #
      #   @param status [Symbol, Knockapi::Models::Message::Status] The message delivery status.
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param actors [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] One or more actors that are associated with this message. Note: this is a list t
      #
      #   @param archived_at [Time, nil] Timestamp when the message was archived.
      #
      #   @param channel [Knockapi::Models::Message::Channel] A configured channel, which is a way to route messages to a provider.
      #
      #   @param clicked_at [Time, nil] Timestamp when the message was clicked.
      #
      #   @param data [Hash{Symbol=>Object}, nil] Data associated with the message’s workflow run. Includes the workflow trigger r
      #
      #   @param interacted_at [Time, nil] Timestamp when the message was interacted with.
      #
      #   @param link_clicked_at [Time, nil] Timestamp when a link in the message was clicked.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata associated with the message.
      #
      #   @param read_at [Time, nil] Timestamp when the message was read.
      #
      #   @param scheduled_at [Time, nil] Timestamp when the message was scheduled to be sent.
      #
      #   @param seen_at [Time, nil] Timestamp when the message was seen.
      #
      #   @param tenant [String, nil] The ID of the `tenant` associated with the message. Only present when a `tenant`
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
        #   The key of the workflow or guide that triggered the message.
        #
        #   @return [String]
        required :key, String

        # @!attribute version_id
        #   The ID of the version of the workflow or guide that triggered the message.
        #
        #   @return [String]
        required :version_id, String

        # @!attribute step_ref
        #   The step reference for the step in the workflow that generated the message.
        #
        #   @return [String, nil]
        optional :step_ref, String, nil?: true

        # @!attribute type
        #   Whether this message was generated from a workflow, broadcast, or guide.
        #
        #   @return [Symbol, Knockapi::Models::Message::Source::Type, nil]
        optional :type, enum: -> { Knockapi::Message::Source::Type }

        # @!attribute workflow_recipient_run_id
        #   The unique identifier for the workflow recipient run that generated this
        #   message. Only present for workflow/broadcast messages.
        #
        #   @return [String, nil]
        optional :workflow_recipient_run_id, String, nil?: true

        # @!attribute workflow_run_id
        #   The unique identifier for the workflow run that generated this message. Only
        #   present for workflow/broadcast messages.
        #
        #   @return [String, nil]
        optional :workflow_run_id, String, nil?: true

        # @!method initialize(_typename:, categories:, key:, version_id:, step_ref: nil, type: nil, workflow_recipient_run_id: nil, workflow_run_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Message::Source} for more details.
        #
        #   The workflow or guide that triggered the message.
        #
        #   @param _typename [String]
        #
        #   @param categories [Array<String>] The categories associated with the message.
        #
        #   @param key [String] The key of the workflow or guide that triggered the message.
        #
        #   @param version_id [String] The ID of the version of the workflow or guide that triggered the message.
        #
        #   @param step_ref [String, nil] The step reference for the step in the workflow that generated the message.
        #
        #   @param type [Symbol, Knockapi::Models::Message::Source::Type] Whether this message was generated from a workflow, broadcast, or guide.
        #
        #   @param workflow_recipient_run_id [String, nil] The unique identifier for the workflow recipient run that generated this message
        #
        #   @param workflow_run_id [String, nil] The unique identifier for the workflow run that generated this message. Only pre

        # Whether this message was generated from a workflow, broadcast, or guide.
        #
        # @see Knockapi::Models::Message::Source#type
        module Type
          extend Knockapi::Internal::Type::Enum

          BROADCAST = :broadcast
          WORKFLOW = :workflow
          GUIDE = :guide

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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

      # @see Knockapi::Models::Message#channel
      class Channel < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the channel.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp of when the channel was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute provider
        #   The ID of the provider that this channel uses to deliver messages.
        #
        #   @return [String]
        required :provider, String

        # @!attribute type
        #   The type of channel, determining what kind of messages it can send.
        #
        #   @return [Symbol, Knockapi::Models::Message::Channel::Type]
        required :type, enum: -> { Knockapi::Message::Channel::Type }

        # @!attribute updated_at
        #   The timestamp of when the channel was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute key
        #   Unique identifier for the channel within a project (immutable once created).
        #
        #   @return [String, nil]
        optional :key, String, nil?: true

        # @!attribute name
        #   The human-readable name of the channel.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(id:, created_at:, provider:, type:, updated_at:, key: nil, name: nil)
        #   A configured channel, which is a way to route messages to a provider.
        #
        #   @param id [String] The unique identifier for the channel.
        #
        #   @param created_at [Time] The timestamp of when the channel was created.
        #
        #   @param provider [String] The ID of the provider that this channel uses to deliver messages.
        #
        #   @param type [Symbol, Knockapi::Models::Message::Channel::Type] The type of channel, determining what kind of messages it can send.
        #
        #   @param updated_at [Time] The timestamp of when the channel was last updated.
        #
        #   @param key [String, nil] Unique identifier for the channel within a project (immutable once created).
        #
        #   @param name [String, nil] The human-readable name of the channel.

        # The type of channel, determining what kind of messages it can send.
        #
        # @see Knockapi::Models::Message::Channel#type
        module Type
          extend Knockapi::Internal::Type::Enum

          EMAIL = :email
          IN_APP = :in_app
          IN_APP_FEED = :in_app_feed
          IN_APP_GUIDE = :in_app_guide
          SMS = :sms
          PUSH = :push
          CHAT = :chat
          HTTP = :http

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
