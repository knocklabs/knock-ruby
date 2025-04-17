# typed: strong

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      # A set of parameters to identify a user with. Does not include the user ID, as
      # that's specified elsewhere in the request. You can supply any additional
      # properties you'd like to upsert for the user.
      sig do
        params(
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, created_at: nil, preferences: nil); end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              created_at: T.nilable(Time),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])
            }
          )
      end
      def to_hash; end
    end
  end
end
