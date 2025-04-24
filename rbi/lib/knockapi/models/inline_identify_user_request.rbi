# typed: strong

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # The ID for the user that you set when identifying them in Knock.
      sig { returns(String) }
      attr_accessor :id

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)) }
      attr_reader :preferences

      sig do
        params(
          preferences: T.nilable(T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequest, Knockapi::Internal::AnyHash))
        )
          .void
      end
      attr_writer :preferences

      # A set of parameters to inline-identify a user with. Inline identifying the user
      # will ensure that the user is available before the request is executed in Knock.
      # It will perform an upsert for the user you're supplying, replacing any
      # properties specified.
      sig do
        params(
          id: String,
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequest, Knockapi::Internal::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(id:, channel_data: nil, created_at: nil, preferences: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem]),
              created_at: T.nilable(Time),
              preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)
            }
          )
      end
      def to_hash; end
    end
  end
end
