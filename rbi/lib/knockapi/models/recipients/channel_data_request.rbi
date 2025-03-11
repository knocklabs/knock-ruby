# typed: strong

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::BaseModel
        sig do
          returns(
            T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            )
          )
        end
        def data
        end

        sig do
          params(
            _: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            )
          )
            .returns(
              T.any(
                Knockapi::Models::Recipients::PushChannelData,
                Knockapi::Models::Recipients::OneSignalChannelData,
                Knockapi::Models::Recipients::SlackChannelData,
                Knockapi::Models::Recipients::MsTeamsChannelData,
                Knockapi::Models::Recipients::DiscordChannelData
              )
            )
        end
        def data=(_)
        end

        sig do
          params(
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
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
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData
                )
              }
            )
        end
        def to_hash
        end

        class Data < Knockapi::Union
          abstract!

          class << self
            sig do
              override
                .returns(
                  [[NilClass, Knockapi::Models::Recipients::PushChannelData], [NilClass, Knockapi::Models::Recipients::OneSignalChannelData], [NilClass, Knockapi::Models::Recipients::SlackChannelData], [NilClass, Knockapi::Models::Recipients::MsTeamsChannelData], [NilClass, Knockapi::Models::Recipients::DiscordChannelData]]
                )
            end
            private def variants
            end
          end
        end
      end
    end
  end
end
