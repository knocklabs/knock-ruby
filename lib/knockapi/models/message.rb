# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list
    class Message < Knockapi::Internal::Type::BaseModel
      # @!attribute [r] id
      #   The unique identifier for the message.
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] _typename
      #   The typename of the schema.
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!parse
      #   # @return [String]
      #   attr_writer :_typename

      # @!attribute [r] actors
      #   One or more actors that are associated with this message. Note: this is a list
      #   that can contain up to 10 actors if the message is produced from a batch.
      #
      #   @return [Array<String, Knockapi::Models::Message::Actor::ObjectReference>, nil]
      optional :actors, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Message::Actor] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::Message::Actor::ObjectReference>]
      #   attr_writer :actors

      # @!attribute archived_at
      #   Timestamp when the message was archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!attribute [r] channel_id
      #   The id for the channel the message was sent through.
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :channel_id

      # @!attribute clicked_at
      #   Timestamp when the message was clicked.
      #
      #   @return [Time, nil]
      optional :clicked_at, Time, nil?: true

      # @!attribute data
      #   Data from the activities linked to the message.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute [r] engagement_statuses
      #   A list of engagement statuses.
      #
      #   @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>, nil]
      optional :engagement_statuses,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::Message::EngagementStatus] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::Message::EngagementStatus>]
      #   attr_writer :engagement_statuses

      # @!attribute [r] inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :inserted_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :inserted_at

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

      # @!attribute [r] recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      #
      #   @return [String, Knockapi::Models::Message::Recipient::ObjectReference, nil]
      optional :recipient, union: -> { Knockapi::Models::Message::Recipient }

      # @!parse
      #   # @return [String, Knockapi::Models::Message::Recipient::ObjectReference]
      #   attr_writer :recipient

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

      # @!attribute [r] source
      #   The source that triggered the message.
      #
      #   @return [Knockapi::Models::Message::Source, nil]
      optional :source, -> { Knockapi::Models::Message::Source }

      # @!parse
      #   # @return [Knockapi::Models::Message::Source]
      #   attr_writer :source

      # @!attribute [r] status
      #   The message delivery status.
      #
      #   @return [Symbol, Knockapi::Models::Message::Status, nil]
      optional :status, enum: -> { Knockapi::Models::Message::Status }

      # @!parse
      #   # @return [Symbol, Knockapi::Models::Message::Status]
      #   attr_writer :status

      # @!attribute tenant
      #   The id for the tenant set for the message.
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!attribute [r] updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated_at

      # @!attribute workflow
      #   The key of the workflow that generated the message.
      #
      #   @return [String, nil]
      optional :workflow, String, nil?: true

      # @!parse
      #   # Represents a single message that was generated by a workflow for a given
      #   # channel.
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

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Actor
        extend Knockapi::Internal::Type::Union

        # The id of the user.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::Message::Actor::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   An identifier for the recipient object.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] collection
          #   The collection the recipient object belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!parse
          #   # @return [String]
          #   attr_writer :collection

          # @!parse
          #   # A reference to a recipient object.
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id: nil, collection: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::Message::Actor::ObjectReference)]
        #   def self.variants; end
      end

      # An engagement status for a message. Can be one of: read, seen, interacted,
      # link_clicked, archived.
      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      #
      # @see Knockapi::Models::Message#recipient
      module Recipient
        extend Knockapi::Internal::Type::Union

        # The id of the user.
        variant String

        # A reference to a recipient object.
        variant -> { Knockapi::Models::Message::Recipient::ObjectReference }

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   An identifier for the recipient object.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] collection
          #   The collection the recipient object belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!parse
          #   # @return [String]
          #   attr_writer :collection

          # @!parse
          #   # A reference to a recipient object.
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id: nil, collection: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::Message::Recipient::ObjectReference)]
        #   def self.variants; end
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
        #   The key of the source that triggered the message.
        #
        #   @return [String]
        required :key, String

        # @!attribute version_id
        #   The id of the version of the source that triggered the message.
        #
        #   @return [String]
        required :version_id, String

        # @!parse
        #   # The source that triggered the message.
        #   #
        #   # @param _typename [String]
        #   # @param categories [Array<String>]
        #   # @param key [String]
        #   # @param version_id [String]
        #   #
        #   def initialize(_typename:, categories:, key:, version_id:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
