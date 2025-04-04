# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # Allows inline setting channel data for a recipient
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      sig do
        params(
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::Util::AnyHash)]
          ),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::Util::AnyHash)]
          ),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::Util::AnyHash)
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
