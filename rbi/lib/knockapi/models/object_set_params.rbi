# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_accessor :channel_data

      # Inline set preferences for a recipient, where the key is the preference set name
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem])) }
      attr_accessor :preferences

      sig do
        params(
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          preferences: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)]
          ),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem]),
              preferences: T.nilable(T::Array[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem]),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
