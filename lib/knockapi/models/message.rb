# frozen_string_literal: true

module Knockapi
  module Models
    class Message < Knockapi::BaseModel
      # @!attribute [r] id
      #   The message ID
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] _typename
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!parse
      #   # @return [String]
      #   attr_writer :_typename

      # @!attribute [r] actors
      #   A list of actor representations associated with the message (up to 10)
      #
      #   @return [Array<String, Knockapi::Models::Message::Actor::ObjectReference>, nil]
      optional :actors, -> { Knockapi::ArrayOf[union: Knockapi::Models::Message::Actor] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::Message::Actor::ObjectReference>]
      #   attr_writer :actors

      # @!attribute archived_at
      #   Timestamp when message was archived
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!attribute [r] channel_id
      #   Channel ID associated with the message
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :channel_id

      # @!attribute clicked_at
      #   Timestamp when message was clicked
      #
      #   @return [Time, nil]
      optional :clicked_at, Time, nil?: true

      # @!attribute data
      #   Additional message data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!attribute [r] engagement_statuses
      #   List of engagement statuses
      #
      #   @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>, nil]
      optional :engagement_statuses, -> { Knockapi::ArrayOf[enum: Knockapi::Models::Message::EngagementStatus] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>]
      #   attr_writer :engagement_statuses

      # @!attribute [r] inserted_at
      #   Timestamp of creation
      #
      #   @return [Time, nil]
      optional :inserted_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :inserted_at

      # @!attribute interacted_at
      #   Timestamp when message was interacted with
      #
      #   @return [Time, nil]
      optional :interacted_at, Time, nil?: true

      # @!attribute link_clicked_at
      #   Timestamp when a link in the message was clicked
      #
      #   @return [Time, nil]
      optional :link_clicked_at, Time, nil?: true

      # @!attribute metadata
      #   Message metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!attribute read_at
      #   Timestamp when message was read
      #
      #   @return [Time, nil]
      optional :read_at, Time, nil?: true

      # @!attribute [r] recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #     reference (id, collection).
      #
      #   @return [String, Knockapi::Models::Message::Recipient::ObjectReference, nil]
      optional :recipient, union: -> { Knockapi::Models::Message::Recipient }

      # @!parse
      #   # @return [String, Knockapi::Models::Message::Recipient::ObjectReference]
      #   attr_writer :recipient

      # @!attribute scheduled_at
      #   Timestamp when message was scheduled for
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute seen_at
      #   Timestamp when message was seen
      #
      #   @return [Time, nil]
      optional :seen_at, Time, nil?: true

      # @!attribute [r] source
      #   Source information
      #
      #   @return [Knockapi::Models::Message::Source, nil]
      optional :source, -> { Knockapi::Models::Message::Source }

      # @!parse
      #   # @return [Knockapi::Models::Message::Source]
      #   attr_writer :source

      # @!attribute [r] status
      #   Message delivery status
      #
      #   @return [Symbol, Knockapi::Models::Message::Status, nil]
      optional :status, enum: -> { Knockapi::Models::Message::Status }

      # @!parse
      #   # @return [Symbol, Knockapi::Models::Message::Status]
      #   attr_writer :status

      # @!attribute tenant
      #   Tenant ID that the message belongs to
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!attribute [r] updated_at
      #   Timestamp of last update
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated_at

      # @!attribute workflow
      #   Workflow key used to create the message
      #
      #   @return [String, nil]
      optional :workflow, String, nil?: true

      # @!parse
      #   # Represents a single message that was generated by a workflow for a given
      #   #   channel.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param actors [Array<String, Knockapi::Models::Message::Actor::ObjectReference>]
      #   # @param archived_at [Time, nil]
      #   # @param channel_id [String]
      #   # @param clicked_at [Time, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param engagement_statuses [Array<Symbol, Knockapi::Models::Message::EngagementStatus>]
      #   # @param inserted_at [Time]
      #   # @param interacted_at [Time, nil]
      #   # @param link_clicked_at [Time, nil]
      #   # @param metadata [Hash{Symbol=>Object}, nil]
      #   # @param read_at [Time, nil]
      #   # @param recipient [String, Knockapi::Models::Message::Recipient::ObjectReference]
      #   # @param scheduled_at [Time, nil]
      #   # @param seen_at [Time, nil]
      #   # @param source [Knockapi::Models::Message::Source]
      #   # @param status [Symbol, Knockapi::Models::Message::Status]
      #   # @param tenant [String, nil]
      #   # @param updated_at [Time]
      #   # @param workflow [String, nil]
      #   #
      #   def initialize(
      #     id: nil,
      #     _typename: nil,
      #     actors: nil,
      #     archived_at: nil,
      #     channel_id: nil,
      #     clicked_at: nil,
      #     data: nil,
      #     engagement_statuses: nil,
      #     inserted_at: nil,
      #     interacted_at: nil,
      #     link_clicked_at: nil,
      #     metadata: nil,
      #     read_at: nil,
      #     recipient: nil,
      #     scheduled_at: nil,
      #     seen_at: nil,
      #     source: nil,
      #     status: nil,
      #     tenant: nil,
      #     updated_at: nil,
      #     workflow: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Actor < Knockapi::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::Message::Actor::ObjectReference }

        class ObjectReference < Knockapi::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end

      # @abstract
      #
      class EngagementStatus < Knockapi::Enum
        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        finalize!
      end

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::Message::Recipient::ObjectReference }

        class ObjectReference < Knockapi::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end

      class Source < Knockapi::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute categories
        #   The workflow categories
        #
        #   @return [Array<String>]
        required :categories, Knockapi::ArrayOf[String]

        # @!attribute key
        #   The workflow key
        #
        #   @return [String]
        required :key, String

        # @!attribute version_id
        #   The source version ID
        #
        #   @return [String]
        required :version_id, String

        # @!parse
        #   # Source information
        #   #
        #   # @param _typename [String]
        #   # @param categories [Array<String>]
        #   # @param key [String]
        #   # @param version_id [String]
        #   #
        #   def initialize(_typename:, categories:, key:, version_id:, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end

      # @abstract
      #
      # Message delivery status
      class Status < Knockapi::Enum
        QUEUED = :queued
        SENT = :sent
        DELIVERED = :delivered
        DELIVERY_ATTEMPTED = :delivery_attempted
        UNDELIVERED = :undelivered
        NOT_SENT = :not_sent
        BOUNCED = :bounced

        finalize!
      end
    end
  end
end
