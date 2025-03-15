# frozen_string_literal: true

module Knockapi
  module Models
    class MessageEvent < Knockapi::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute inserted_at
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute recipient
      #   A reference to a recipient, either a user identifier (string) or an object
      #     reference (id, collection).
      #
      #   @return [String, Knockapi::Models::MessageEvent::Recipient::ObjectReference]
      required :recipient, union: -> { Knockapi::Models::MessageEvent::Recipient }

      # @!attribute type
      #
      #   @return [Symbol, Knockapi::Models::MessageEvent::Type]
      required :type, enum: -> { Knockapi::Models::MessageEvent::Type }

      # @!attribute data
      #   The data associated with the event. Only present for some event types
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!parse
      #   # A single event that occurred for a message
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param inserted_at [Time]
      #   # @param recipient [String, Knockapi::Models::MessageEvent::Recipient::ObjectReference]
      #   # @param type [Symbol, Knockapi::Models::MessageEvent::Type]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   #
      #   def initialize(id:, _typename:, inserted_at:, recipient:, type:, data: nil, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::MessageEvent::Recipient::ObjectReference }

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
      class Type < Knockapi::Enum
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

        finalize!
      end
    end
  end
end
