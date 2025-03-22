# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :collection

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      # Inline identifies a custom object belonging to a collection
      sig do
        params(
          id: String,
          collection: String,
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Util::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash)]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(id:, collection:, channel_data: nil, created_at: nil, preferences: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              collection: String,
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              created_at: T.nilable(Time),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])
            }
          )
      end
      def to_hash
      end
    end
  end
end
