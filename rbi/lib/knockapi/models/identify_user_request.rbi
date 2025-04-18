# typed: strong

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem])) }
      attr_accessor :preferences

      # A set of parameters to identify a user with. Does not include the user ID, as
      # that's specified elsewhere in the request. You can supply any additional
      # properties you'd like to upsert for the user.
      sig do
        params(
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, created_at: nil, preferences: nil); end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem]),
              created_at: T.nilable(Time),
              preferences: T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem])
            }
          )
      end
      def to_hash; end
    end
  end
end
