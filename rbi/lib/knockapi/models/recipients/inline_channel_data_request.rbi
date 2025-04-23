# typed: strong

module Knockapi
  module Models
    module Recipients
      class InlineChannelDataRequestItem < Knockapi::Internal::Type::BaseModel
        # The ID of the channel to associate data with.
        sig { returns(String) }
        attr_accessor :channel_id

        # Channel data for a given channel type.
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
        attr_accessor :data

        # The provider identifier (must match the data.type value)
        sig { returns(String) }
        attr_accessor :provider

        # A request to set channel data for a type of channel inline.
        sig do
          params(
            channel_id: String,
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::Recipients::OneSignalChannelData,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData
            ),
            provider: String
          )
            .returns(T.attached_class)
        end
        def self.new(channel_id:, data:, provider:); end

        sig do
          override
            .returns(
              {
                channel_id: String,
                data: T.any(
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData
                ),
                provider: String
              }
            )
        end
        def to_hash; end

        # Channel data for a given channel type.
        module Data
          extend Knockapi::Internal::Type::Union

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
              )
          end
          def self.variants; end
        end
      end

      InlineChannelDataRequest =
        T.let(
          Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlineChannelDataRequestItem],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
