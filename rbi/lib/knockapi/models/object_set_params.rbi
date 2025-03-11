# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      sig { returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest)) }
      def preferences
      end

      sig do
        params(_: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
          .returns(T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest))
      end
      def preferences=(_)
      end

      sig do
        params(
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest),
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
              preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
