# typed: strong

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::Internal::Type::BaseModel
        # The unique identifier for the channel.
        sig { returns(String) }
        attr_accessor :channel_id

        # Channel data for a given channel type.
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

        # The type of provider.
        sig { returns(T.nilable(Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)) }
        attr_reader :provider

        sig { params(provider: Knockapi::Models::Recipients::RecipientsChannelData::Provider::OrSymbol).void }
        attr_writer :provider

        # Channel data for a given channel type.
        sig do
          params(
            channel_id: String,
            data: T.any(
              Knockapi::Models::Recipients::PushChannelData,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::Recipients::SlackChannelData,
              Knockapi::Models::Recipients::MsTeamsChannelData,
              Knockapi::Models::Recipients::DiscordChannelData,
              Knockapi::Models::Recipients::OneSignalChannelData
            ),
            provider: Knockapi::Models::Recipients::RecipientsChannelData::Provider::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(channel_id:, data:, provider: nil); end

        sig do
          override
            .returns(
              {
                channel_id: String,
                data: T.any(
                  Knockapi::Models::Recipients::PushChannelData,
                  Knockapi::Models::Recipients::SlackChannelData,
                  Knockapi::Models::Recipients::MsTeamsChannelData,
                  Knockapi::Models::Recipients::DiscordChannelData,
                  Knockapi::Models::Recipients::OneSignalChannelData
                ),
                provider: Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol
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
                [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
              )
          end
          def self.variants; end
        end

        # The type of provider.
        module Provider
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUSH_FCM = T.let(:push_fcm, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          PUSH_APNS =
            T.let(:push_apns, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          PUSH_EXPO =
            T.let(:push_expo, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          PUSH_ONE_SIGNAL =
            T.let(:push_one_signal, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          CHAT_SLACK =
            T.let(:chat_slack, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          CHAT_MS_TEAMS =
            T.let(:chat_ms_teams, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          CHAT_DISCORD =
            T.let(:chat_discord, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)
          HTTP_KNOCK_WEBHOOK =
            T.let(:http_knock_webhook, Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::RecipientsChannelData::Provider::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
