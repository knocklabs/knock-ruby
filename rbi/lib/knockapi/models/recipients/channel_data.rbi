# typed: strong

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::BaseModel
        sig { returns(String) }
        attr_accessor :_typename

        sig { returns(String) }
        attr_accessor :channel_id

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
        attr_accessor :data

        # Channel data for various channel types
        sig do
          params(
            _typename: String,
            channel_id: String,
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Util::AnyHash,
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
        module Data
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData
                )
              }
            end

          class << self
            sig do
              override
                .returns(
                  [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
                )
            end
            def variants
            end
          end
        end
      end
    end
  end
end
