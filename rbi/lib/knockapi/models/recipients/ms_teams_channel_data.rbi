# typed: strong

module Knockapi
  module Models
    module Recipients
      class MsTeamsChannelData < Knockapi::Internal::Type::BaseModel
        # The typename of the schema.
        sig { returns(Knockapi::Models::Recipients::MsTeamsChannelData::Typename::OrSymbol) }
        attr_accessor :_typename

        # List of Microsoft Teams connections.
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

        # The channel type identifier
        sig { returns(Knockapi::Models::Recipients::MsTeamsChannelData::Type::OrSymbol) }
        attr_accessor :type

        # Microsoft Teams tenant ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ms_teams_tenant_id

        # Microsoft Teams channel connection.
        sig do
          params(
            _typename: Knockapi::Models::Recipients::MsTeamsChannelData::Typename::OrSymbol,
            connections: T::Array[
              T.any(
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
            ],
            type: Knockapi::Models::Recipients::MsTeamsChannelData::Type::OrSymbol,
            ms_teams_tenant_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(_typename:, connections:, type:, ms_teams_tenant_id: nil); end

        sig do
          override
            .returns(
              {
                _typename: Knockapi::Models::Recipients::MsTeamsChannelData::Typename::OrSymbol,
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                    Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
                  )
                ],
                type: Knockapi::Models::Recipients::MsTeamsChannelData::Type::OrSymbol,
                ms_teams_tenant_id: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # The typename of the schema.
        module Typename
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Typename) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MS_TEAMS_CHANNEL_DATA =
            T.let(:MsTeamsChannelData, Knockapi::Models::Recipients::MsTeamsChannelData::Typename::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::MsTeamsChannelData::Typename::TaggedSymbol]) }
          def self.values; end
        end

        # Microsoft Teams token connection.
        module Connection
          extend Knockapi::Internal::Type::Union

          class MsTeamsTokenConnection < Knockapi::Internal::Type::BaseModel
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
              )
                .returns(T.attached_class)
            end
            def self.new(
              ms_teams_channel_id: nil,
              ms_teams_team_id: nil,
              ms_teams_tenant_id: nil,
              ms_teams_user_id: nil
            )
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
            def to_hash; end
          end

          class MsTeamsIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # Microsoft Teams incoming webhook.
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
                  Knockapi::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :incoming_webhook

            # Microsoft Teams incoming webhook connection.
            sig do
              params(
                incoming_webhook: T.any(
                  Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook,
                  Knockapi::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(incoming_webhook:); end

            sig do
              override
                .returns(
                  {
                    incoming_webhook: Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                  }
                )
            end
            def to_hash; end

            class IncomingWebhook < Knockapi::Internal::Type::BaseModel
              # Microsoft Teams incoming webhook URL.
              sig { returns(String) }
              attr_accessor :url

              # Microsoft Teams incoming webhook.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(url:); end

              sig { override.returns({url: String}) }
              def to_hash; end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsTokenConnection, Knockapi::Models::Recipients::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection]
              )
          end
          def self.variants; end
        end

        # The channel type identifier
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::MsTeamsChannelData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHAT_MS_TEAMS =
            T.let(:chat_ms_teams, Knockapi::Models::Recipients::MsTeamsChannelData::Type::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::MsTeamsChannelData::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
