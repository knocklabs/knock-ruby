# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at=(_)
      end

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)) }
      def preferences
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
      end
      def preferences=(_)
      end

      # Inline identifies a custom object belonging to a collection
      sig do
        params(
          id: String,
          collection: String,
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          created_at: T.nilable(Time),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)
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
              channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
              created_at: T.nilable(Time),
              preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)
            }
          )
      end
      def to_hash
      end
    end
  end
end
