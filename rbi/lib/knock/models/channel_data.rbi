# typed: strong

module Knock
  module Models
    class ChannelData < Knock::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(String) }
      def channel_id
      end

      sig { params(_: String).returns(String) }
      def channel_id=(_)
      end

      sig do
        returns(
          T.any(
            Knock::Models::PushChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData,
            Knock::Models::OneSignalChannelData
          )
        )
      end
      def data
      end

      sig do
        params(
          _: T.any(
            Knock::Models::PushChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData,
            Knock::Models::OneSignalChannelData
          )
        )
          .returns(
            T.any(
              Knock::Models::PushChannelData,
              Knock::Models::SlackChannelData,
              Knock::Models::MsTeamsChannelData,
              Knock::Models::DiscordChannelData,
              Knock::Models::OneSignalChannelData
            )
          )
      end
      def data=(_)
      end

      sig do
        params(
          _typename: String,
          channel_id: String,
          data: T.any(
            Knock::Models::PushChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData,
            Knock::Models::OneSignalChannelData
          )
        )
          .returns(T.attached_class)
      end
      def self.new(_typename:, channel_id:, data:)
      end

      sig do
        override
          .returns(
            {
              _typename: String,
              channel_id: String,
              data: T.any(
                Knock::Models::PushChannelData,
                Knock::Models::SlackChannelData,
                Knock::Models::MsTeamsChannelData,
                Knock::Models::DiscordChannelData,
                Knock::Models::OneSignalChannelData
              )
            }
          )
      end
      def to_hash
      end

      class Data < Knock::Union
        abstract!

        class << self
          sig do
            override
              .returns(
                [[NilClass, Knock::Models::PushChannelData], [NilClass, Knock::Models::SlackChannelData], [NilClass, Knock::Models::MsTeamsChannelData], [NilClass, Knock::Models::DiscordChannelData], [NilClass, Knock::Models::OneSignalChannelData]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
