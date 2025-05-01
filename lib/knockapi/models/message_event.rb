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
      #   The typename of the schema.
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
      #   reference (ID, collection).
      #
      #   @return [String, Knockapi::Models::RecipientReference::ObjectReference]
      required :recipient, union: -> { Knockapi::Models::RecipientReference }

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

      # @!method initialize(id:, _typename:, inserted_at:, recipient:, type:, data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::MessageEvent} for more details.
      #
      #   A message event. Occurs when a message
      #   [delivery or engagement status](/send-notifications/message-statuses) changes.
      #
      #   @param id [String] The unique identifier for the message event.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param inserted_at [Time] Timestamp when the event was created.
      #
      #   @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] A reference to a recipient, either a user identifier (string) or an object refer
      #   ...
      #
      #   @param type [Symbol, Knockapi::Models::MessageEvent::Type] The type of event that occurred.
      #
      #   @param data [Hash{Symbol=>Object}, nil] The data associated with the message event. Only present for some event types.

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
