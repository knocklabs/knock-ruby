# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The collection this object belongs to.
      sig { returns(String) }
      attr_accessor :collection

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_accessor :channel_data

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # A list of objects that specify the preferences for the user.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :preferences

      # A custom [Object](/concepts/objects) entity which belongs to a collection.
      sig do
        params(
          id: String,
          collection: String,
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(T.anything)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, collection:, channel_data: nil, created_at: nil, preferences: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              collection: String,
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem]),
              created_at: T.nilable(Time),
              preferences: T.nilable(T.anything)
            }
          )
      end
      def to_hash; end
    end
  end
end
