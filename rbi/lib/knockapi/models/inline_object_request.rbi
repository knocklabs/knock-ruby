# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # Unique identifier for the object.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      # The collection this object belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :collection

      sig { params(collection: String).void }
      attr_writer :collection

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      # A custom object entity which belongs to a collection.
      sig do
        params(
          id: String,
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::AnyHash)]
          ),
          collection: String,
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(id: nil, channel_data: nil, collection: nil, created_at: nil, preferences: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              collection: String,
              created_at: T.nilable(Time),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])
            }
          )
      end
      def to_hash; end
    end
  end
end
