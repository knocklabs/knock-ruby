# typed: strong

module Knock
  module Models
    class DiscordChannelData < Knock::BaseModel
      sig do
        returns(
          T::Array[
          T.any(
            Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection,
            Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
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
            Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection,
            Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection,
              Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
            )
            ]
          )
      end
      def connections=(_)
      end

      sig do
        params(
          connections: T::Array[
          T.any(
            Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection,
            Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
          )
          ]
        )
          .returns(T.attached_class)
      end
      def self.new(connections:)
      end

      sig do
        override
          .returns(
            {
              connections: T::Array[
              T.any(
                Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection,
                Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection
              )
              ]
            }
          )
      end
      def to_hash
      end

      class Connection < Knock::Union
        abstract!

        class DiscordChannelConnection < Knock::BaseModel
          sig { returns(String) }
          def channel_id
          end

          sig { params(_: String).returns(String) }
          def channel_id=(_)
          end

          sig { params(channel_id: String).returns(T.attached_class) }
          def self.new(channel_id:)
          end

          sig { override.returns({channel_id: String}) }
          def to_hash
          end
        end

        class DiscordIncomingWebhookConnection < Knock::BaseModel
          sig { returns(Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook) }
          def incoming_webhook
          end

          sig do
            params(
              _: Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
            )
              .returns(Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook)
          end
          def incoming_webhook=(_)
          end

          sig do
            params(
              incoming_webhook: Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
            )
              .returns(T.attached_class)
          end
          def self.new(incoming_webhook:)
          end

          sig do
            override
              .returns(
                {
                  incoming_webhook: Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection::IncomingWebhook
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
                [[NilClass, Knock::Models::DiscordChannelData::Connection::DiscordChannelConnection], [NilClass, Knock::Models::DiscordChannelData::Connection::DiscordIncomingWebhookConnection]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
