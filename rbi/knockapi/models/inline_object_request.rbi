# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::InlineObjectRequest, Knockapi::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The collection this object belongs to.
      sig { returns(String) }
      attr_accessor :collection

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest])
        )
      end
      attr_accessor :channel_data

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set id.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_accessor :preferences

      # A custom [Object](/concepts/objects) entity which belongs to a collection.
      sig do
        params(
          id: String,
          collection: String,
          channel_data:
            T.nilable(
              T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest::OrHash]
            ),
          created_at: T.nilable(Time),
          preferences:
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSetRequest::OrHash
              ]
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The collection this object belongs to.
        collection:,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # Timestamp when the resource was created.
        created_at: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        preferences: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: String,
            channel_data:
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest]
              ),
            created_at: T.nilable(Time),
            preferences:
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest]
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
