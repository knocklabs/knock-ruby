# typed: strong

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::BaseModel
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

        # Channel data for push providers
        sig do
          returns(
            T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData
            )
          )
        end
        def data
        end

        sig do
          params(
            _: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData
            )
          )
            .returns(
              T.any(
                Knockapi::Models::Recipients::PushChannelData,
                Knockapi::Models::Recipients::SlackChannelData,
                Knockapi::Models::Recipients::MsTeamsChannelData,
                Knockapi::Models::Recipients::DiscordChannelData,
                Knockapi::Models::Recipients::OneSignalChannelData
              )
            )
        end
        def data=(_)
        end

        # Channel data for various channel types
        sig do
          params(
            _typename: String,
            channel_id: String,
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData
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
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData
                )
              }
            )
        end
        def to_hash
        end

        # Channel data for push providers
        class Data < Knockapi::Union
          abstract!

          class << self
            # @api private
            sig do
              override
                .returns(
                  [[NilClass, Knockapi::Models::Recipients::PushChannelData], [NilClass, Knockapi::Models::Recipients::SlackChannelData], [NilClass, Knockapi::Models::Recipients::MsTeamsChannelData], [NilClass, Knockapi::Models::Recipients::DiscordChannelData], [NilClass, Knockapi::Models::Recipients::OneSignalChannelData]]
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
