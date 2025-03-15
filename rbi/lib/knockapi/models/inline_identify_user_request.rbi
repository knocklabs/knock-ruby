# typed: strong

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::BaseModel
      # The ID of the user to identify. This is an ID that you supply.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
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

      # The creation date of the user from your system.
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

      # A set of parameters to inline-identify a user with. Inline identifying the user
      #   will ensure that the user is available before the request is executed in Knock.
      #   It will perform an upsert against the user you're supplying, replacing any
      #   properties specified.
      sig do
        params(
          id: String,
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          created_at: T.nilable(Time),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, channel_data: nil, created_at: nil, preferences: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
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
