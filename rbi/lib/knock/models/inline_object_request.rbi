# typed: strong

module Knock
  module Models
    class InlineObjectRequest < Knock::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

      sig { returns(T.nilable(Knock::Models::InlineChannelDataRequest)) }
      def channel_data
      end

      sig do
        params(_: T.nilable(Knock::Models::InlineChannelDataRequest))
          .returns(T.nilable(Knock::Models::InlineChannelDataRequest))
      end
      def channel_data=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at=(_)
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
          id: String,
          collection: String,
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          created_at: T.nilable(Time),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest)
        )
          .returns(T.attached_class)
      end
      def self.new(id:, collection:, channel_data: nil, created_at: nil, preferences: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              collection: String,
              channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
              created_at: T.nilable(Time),
              preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest)
            }
          )
      end
      def to_hash
      end
    end
  end
end
