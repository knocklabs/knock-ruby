# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_events
    class MessageEvent < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the message event.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The type name of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute inserted_at
      #   Timestamp when the event was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      #
      #   @return [String, Knockapi::Models::MessageEvent::Recipient::RecipientReference]
      required :recipient, union: -> { Knockapi::Models::MessageEvent::Recipient }

      # @!attribute type
      #   The type of event that occurred.
      #
      #   @return [Symbol, Knockapi::Models::MessageEvent::Type]
      required :type, enum: -> { Knockapi::Models::MessageEvent::Type }

      # @!attribute data
      #   The data associated with the message event. Only present for some event types.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!parse
      #   # A message event.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param inserted_at [Time]
      #   # @param recipient [String, Knockapi::Models::MessageEvent::Recipient::RecipientReference]
      #   # @param type [Symbol, Knockapi::Models::MessageEvent::Type]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   #
      #   def initialize(id:, _typename:, inserted_at:, recipient:, type:, data: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      #
      # @see Knockapi::Models::MessageEvent#recipient
      module Recipient
        extend Knockapi::Internal::Type::Union

        # An identifier for a user recipient.
        variant String

        # A reference to a recipient, either a user identifier (string) or an object reference (id, collection).
        variant -> { Knockapi::Models::MessageEvent::Recipient::RecipientReference }

        class RecipientReference < Knockapi::Internal::Type::BaseModel
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
          #   # A reference to a recipient, either a user identifier (string) or an object
          #   # reference (id, collection).
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id: nil, collection: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(String, Knockapi::Models::MessageEvent::Recipient::RecipientReference)]
        #   def self.variants; end
      end

      # The type of event that occurred.
      #
      # @see Knockapi::Models::MessageEvent#type
      module Type
        extend Knockapi::Internal::Type::Enum

        MESSAGE_ARCHIVED = :"message.archived"
        MESSAGE_BOUNCED = :"message.bounced"
        MESSAGE_DELIVERED = :"message.delivered"
        MESSAGE_DELIVERY_ATTEMPTED = :"message.delivery_attempted"
        MESSAGE_INTERACTED = :"message.interacted"
        MESSAGE_LINK_CLICKED = :"message.link_clicked"
        MESSAGE_NOT_SENT = :"message.not_sent"
        MESSAGE_QUEUED = :"message.queued"
        MESSAGE_READ = :"message.read"
        MESSAGE_SEEN = :"message.seen"
        MESSAGE_SENT = :"message.sent"
        MESSAGE_UNARCHIVED = :"message.unarchived"
        MESSAGE_UNDELIVERED = :"message.undelivered"
        MESSAGE_UNREAD = :"message.unread"
        MESSAGE_UNSEEN = :"message.unseen"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
