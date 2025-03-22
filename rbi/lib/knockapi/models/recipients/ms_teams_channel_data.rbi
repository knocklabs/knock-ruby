# typed: strong

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::BaseModel
        sig do
          returns(
            T::Array[
            T.any(
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
            )
            ]
          )
        end
        attr_accessor :connections

        # The Microsoft Teams tenant ID
        sig { returns(T.nilable(String)) }
        attr_accessor :ms_teams_tenant_id

        # Microsoft Teams channel data
        sig do
          params(
            connections: T::Array[
            T.any(
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
              Knockapi::Util::AnyHash,
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
            )
            ],
            ms_teams_tenant_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(connections:, ms_teams_tenant_id: nil)
        end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                T.any(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
                )
                ],
                ms_teams_tenant_id: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # Microsoft Teams token connection
        module Connection
          extend Knockapi::Union

          class MsTeamsTokenConnection < Knockapi::BaseModel
            # The Microsoft Teams channel ID
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_channel_id

            # The Microsoft Teams team ID
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_team_id

            # The Microsoft Teams tenant ID
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_tenant_id

            # The Microsoft Teams user ID
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_user_id

            # Microsoft Teams token connection
            sig do
              params(
                ms_teams_channel_id: T.nilable(String),
                ms_teams_team_id: T.nilable(String),
                ms_teams_tenant_id: T.nilable(String),
                ms_teams_user_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(ms_teams_channel_id: nil, ms_teams_team_id: nil, ms_teams_tenant_id: nil, ms_teams_user_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    ms_teams_channel_id: T.nilable(String),
                    ms_teams_team_id: T.nilable(String),
                    ms_teams_tenant_id: T.nilable(String),
                    ms_teams_user_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::BaseModel
            # The incoming webhook
            sig do
              returns(
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
              )
            end
            attr_reader :incoming_webhook

            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :incoming_webhook

            # Microsoft Teams incoming webhook connection
            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Util::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(incoming_webhook:)
            end

            sig do
              override
                .returns(
                  {
                    incoming_webhook: Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                  }
                )
            end
            def to_hash
            end

            class IncomingWebhook < Knockapi::BaseModel
              # The URL of the incoming webhook
              sig { returns(String) }
              attr_accessor :url

              # The incoming webhook
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:)
              end

              sig { override.returns({url: String}) }
              def to_hash
              end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection]
              )
          end
          def self.variants
          end
        end
      end
    end
  end
end
