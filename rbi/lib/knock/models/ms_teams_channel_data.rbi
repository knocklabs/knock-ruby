# typed: strong

module Knock
  module Models
    class MsTeamsChannelData < Knock::BaseModel
      sig do
        returns(
          T::Array[
          T.any(
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
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
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
              Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
            )
            ]
          )
      end
      def connections=(_)
      end

      sig { returns(T.nilable(String)) }
      def ms_teams_tenant_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ms_teams_tenant_id=(_)
      end

      sig do
        params(
          connections: T::Array[
          T.any(
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
            Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
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
                Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection,
                Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection
              )
              ],
              ms_teams_tenant_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Connection < Knock::Union
        abstract!

        class MsTeamsTokenConnection < Knock::BaseModel
          sig { returns(T.nilable(String)) }
          def ms_teams_channel_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ms_teams_channel_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def ms_teams_team_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ms_teams_team_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def ms_teams_tenant_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ms_teams_tenant_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def ms_teams_user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ms_teams_user_id=(_)
          end

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

        class MsTeamsIncomingWebhookConnection < Knock::BaseModel
          sig { returns(Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook) }
          def incoming_webhook
          end

          sig do
            params(
              _: Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
            )
              .returns(Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook)
          end
          def incoming_webhook=(_)
          end

          sig do
            params(
              incoming_webhook: Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
            )
              .returns(T.attached_class)
          end
          def self.new(incoming_webhook:)
          end

          sig do
            override
              .returns(
                {
                  incoming_webhook: Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection::IncomingWebhook
                }
              )
          end
          def to_hash
          end

          class IncomingWebhook < Knock::BaseModel
            sig { returns(String) }
            def url
            end

            sig { params(_: String).returns(String) }
            def url=(_)
            end

            sig { params(url: String).returns(T.attached_class) }
            def self.new(url:)
            end

            sig { override.returns({url: String}) }
            def to_hash
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [[NilClass, Knock::Models::MsTeamsChannelData::Connection::MsTeamsTokenConnection], [NilClass, Knock::Models::MsTeamsChannelData::Connection::MsTeamsIncomingWebhookConnection]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
