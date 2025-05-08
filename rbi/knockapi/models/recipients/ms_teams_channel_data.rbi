# typed: strong

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # List of Microsoft Teams connections.
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
            ]
          )
        end
        attr_accessor :connections

        # Microsoft Teams tenant ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ms_teams_tenant_id

        # Microsoft Teams channel connection.
        sig do
          params(
            connections:
              T::Array[
                T.any(
                  Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection::OrHash,
                  Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::OrHash
                )
              ],
            ms_teams_tenant_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # List of Microsoft Teams connections.
          connections:,
          # Microsoft Teams tenant ID.
          ms_teams_tenant_id: nil
        )
        end

        sig do
          override.returns(
            {
              connections:
                T::Array[
                  T.any(
                    Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                    Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
                  )
                ],
              ms_teams_tenant_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Microsoft Teams token connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
            end

          class MsTeamsTokenConnection < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

            # Microsoft Teams channel ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_channel_id

            # Microsoft Teams team ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_team_id

            # Microsoft Teams tenant ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_tenant_id

            # Microsoft Teams user ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :ms_teams_user_id

            # Microsoft Teams token connection.
            sig do
              params(
                ms_teams_channel_id: T.nilable(String),
                ms_teams_team_id: T.nilable(String),
                ms_teams_tenant_id: T.nilable(String),
                ms_teams_user_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Microsoft Teams channel ID.
              ms_teams_channel_id: nil,
              # Microsoft Teams team ID.
              ms_teams_team_id: nil,
              # Microsoft Teams tenant ID.
              ms_teams_tenant_id: nil,
              # Microsoft Teams user ID.
              ms_teams_user_id: nil
            )
            end

            sig do
              override.returns(
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

          class MsTeamsIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

            # Microsoft Teams incoming webhook.
            sig do
              returns(
                Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
              )
            end
            attr_reader :incoming_webhook

            sig do
              params(
                incoming_webhook:
                  Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook::OrHash
              ).void
            end
            attr_writer :incoming_webhook

            # Microsoft Teams incoming webhook connection.
            sig do
              params(
                incoming_webhook:
                  Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Microsoft Teams incoming webhook.
              incoming_webhook:
            )
            end

            sig do
              override.returns(
                {
                  incoming_webhook:
                    Knockapi::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                }
              )
            end
            def to_hash
            end

            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

              # Microsoft Teams incoming webhook URL.
              sig { returns(String) }
              attr_accessor :url

              # Microsoft Teams incoming webhook.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(
                # Microsoft Teams incoming webhook URL.
                url:
              )
              end

              sig { override.returns({ url: String }) }
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::MsTeamsChannelData::Connection::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
