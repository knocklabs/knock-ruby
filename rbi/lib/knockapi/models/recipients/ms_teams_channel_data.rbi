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
        def connections
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
              ]
            )
        end
        def connections=(_)
        end

        # The Microsoft Teams tenant ID
        sig { returns(T.nilable(String)) }
        def ms_teams_tenant_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ms_teams_tenant_id=(_)
        end

        # Microsoft Teams channel data
        sig do
          params(
            connections: T::Array[
            T.any(
              Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
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

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
                )
              }
            end

          class MsTeamsTokenConnection < Knockapi::BaseModel
            # The Microsoft Teams channel ID
            sig { returns(T.nilable(String)) }
            def ms_teams_channel_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def ms_teams_channel_id=(_)
            end

            # The Microsoft Teams team ID
            sig { returns(T.nilable(String)) }
            def ms_teams_team_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def ms_teams_team_id=(_)
            end

            # The Microsoft Teams tenant ID
            sig { returns(T.nilable(String)) }
            def ms_teams_tenant_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def ms_teams_tenant_id=(_)
            end

            # The Microsoft Teams user ID
            sig { returns(T.nilable(String)) }
            def ms_teams_user_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def ms_teams_user_id=(_)
            end

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
            def incoming_webhook
            end

            sig do
              params(
                _: Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
              )
                .returns(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                )
            end
            def incoming_webhook=(_)
            end

            # Microsoft Teams incoming webhook connection
            sig do
              params(
                incoming_webhook: Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
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
              def url
              end

              sig { params(_: String).returns(String) }
              def url=(_)
              end

              # The incoming webhook
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:)
              end

              sig { override.returns({url: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
