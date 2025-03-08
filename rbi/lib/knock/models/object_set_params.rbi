# typed: strong

module Knock
  module Models
    class ObjectSetParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T.nilable(Knock::Models::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knock::Models::InlineChannelDataRequest))
          .returns(T.nilable(Knock::Models::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      sig { returns(T.nilable(Knock::Models::InlinePreferenceSetRequest)) }
      def preferences
      end

      sig do
        params(_: T.nilable(Knock::Models::InlinePreferenceSetRequest))
          .returns(T.nilable(Knock::Models::InlinePreferenceSetRequest))
      end
      def preferences=(_)
      end

      sig do
        params(
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, preferences: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
              preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
