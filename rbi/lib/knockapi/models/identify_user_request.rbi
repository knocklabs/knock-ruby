# typed: strong

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::BaseModel
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

      # A set of parameters to identify a user with. Does not include the user ID, as
      #   that's specified elsewhere in the request. You can supply any additional
      #   properties you'd like to upsert against the user.
      sig do
        params(
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          created_at: T.nilable(Time),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, created_at: nil, preferences: nil)
      end

      sig do
        override
          .returns(
            {
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
