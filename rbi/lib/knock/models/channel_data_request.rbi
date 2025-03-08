# typed: strong

module Knock
  module Models
    class ChannelDataRequest < Knock::BaseModel
      sig do
        returns(
          T.any(
            Knock::Models::PushChannelData,
            Knock::Models::OneSignalChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData
          )
        )
      end
      def data
      end

      sig do
        params(
          _: T.any(
            Knock::Models::PushChannelData,
            Knock::Models::OneSignalChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData
          )
        )
          .returns(
            T.any(
              Knock::Models::PushChannelData,
              Knock::Models::OneSignalChannelData,
              Knock::Models::SlackChannelData,
              Knock::Models::MsTeamsChannelData,
              Knock::Models::DiscordChannelData
            )
          )
      end
      def data=(_)
      end

      sig do
        params(
          data: T.any(
            Knock::Models::PushChannelData,
            Knock::Models::OneSignalChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData
          )
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override
          .returns(
            {
              data: T.any(
                Knock::Models::PushChannelData,
                Knock::Models::OneSignalChannelData,
                Knock::Models::SlackChannelData,
                Knock::Models::MsTeamsChannelData,
                Knock::Models::DiscordChannelData
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
                [[NilClass, Knock::Models::PushChannelData], [NilClass, Knock::Models::OneSignalChannelData], [NilClass, Knock::Models::SlackChannelData], [NilClass, Knock::Models::MsTeamsChannelData], [NilClass, Knock::Models::DiscordChannelData]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
