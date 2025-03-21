# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      def channel_data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]))
          .returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]))
      end
      def channel_data=(_)
      end

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      def preferences
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]))
          .returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]))
      end
      def preferences=(_)
      end

      sig do
        params(
          channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
          preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
