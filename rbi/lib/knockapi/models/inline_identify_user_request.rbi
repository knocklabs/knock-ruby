# typed: strong

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::BaseModel
      # The ID of the user to identify. This is an ID that you supply.
      sig { returns(String) }
      attr_accessor :id

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      # A set of parameters to inline-identify a user with. Inline identifying the user
      #   will ensure that the user is available before the request is executed in Knock.
      #   It will perform an upsert against the user you're supplying, replacing any
      #   properties specified.
      sig do
        params(
          id: String,
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
      def self.new(id:, channel_data: nil, created_at: nil, preferences: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
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
