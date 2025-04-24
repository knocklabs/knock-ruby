# typed: strong

module Knockapi
  module Models
    module Recipients
      class SlackChannelData < Knockapi::Internal::Type::BaseModel
        # List of Slack channel connections.
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
              )
            ]
          )
        end
        attr_accessor :connections

        # The type of provider.
        sig { returns(Knockapi::Models::Recipients::SlackChannelData::Type::OrSymbol) }
        attr_accessor :type

        # A Slack connection token.
        sig { returns(T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token)) }
        attr_reader :token

        sig do
          params(
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :token

        # The typename of the schema.
        sig { returns(T.nilable(Knockapi::Models::Recipients::SlackChannelData::Typename::OrSymbol)) }
        attr_reader :_typename

        sig { params(_typename: Knockapi::Models::Recipients::SlackChannelData::Typename::OrSymbol).void }
        attr_writer :_typename

        # Slack channel data
        sig do
          params(
            connections: T::Array[
              T.any(
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
              )
            ],
            type: Knockapi::Models::Recipients::SlackChannelData::Type::OrSymbol,
            token: T.nilable(T.any(Knockapi::Models::Recipients::SlackChannelData::Token, Knockapi::Internal::AnyHash)),
            _typename: Knockapi::Models::Recipients::SlackChannelData::Typename::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(connections:, type:, token: nil, _typename: nil); end

        sig do
          override
            .returns(
              {
                connections: T::Array[
                  T.any(
                    Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection,
                    Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection
                  )
                ],
                type: Knockapi::Models::Recipients::SlackChannelData::Type::OrSymbol,
                token: T.nilable(Knockapi::Models::Recipients::SlackChannelData::Token),
                _typename: Knockapi::Models::Recipients::SlackChannelData::Typename::OrSymbol
              }
            )
        end
        def to_hash; end

        # A Slack connection, either an access token or an incoming webhook
        module Connection
          extend Knockapi::Internal::Type::Union

          class SlackTokenConnection < Knockapi::Internal::Type::BaseModel
            # A Slack access token.
            sig { returns(T.nilable(String)) }
            attr_accessor :access_token

            # A Slack channel ID from the Slack provider.
            sig { returns(T.nilable(String)) }
            attr_accessor :channel_id

            # A Slack user ID from the Slack provider.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_id

            # A Slack connection token.
            sig do
              params(
                access_token: T.nilable(String),
                channel_id: T.nilable(String),
                user_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(access_token: nil, channel_id: nil, user_id: nil); end

            sig do
              override
                .returns({
                           access_token: T.nilable(String),
                           channel_id: T.nilable(String),
                           user_id: T.nilable(String)
                         })
            end
            def to_hash; end
          end

          class SlackIncomingWebhookConnection < Knockapi::Internal::Type::BaseModel
            # The URL of the incoming webhook for a Slack connection.
            sig { returns(String) }
            attr_accessor :url

            # A Slack connection incoming webhook.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(url:); end

            sig { override.returns({url: String}) }
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Recipients::SlackChannelData::Connection::SlackTokenConnection, Knockapi::Models::Recipients::SlackChannelData::Connection::SlackIncomingWebhookConnection]
              )
          end
          def self.variants; end
        end

        # The type of provider.
        module Type
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::SlackChannelData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHAT_SLACK = T.let(:chat_slack, Knockapi::Models::Recipients::SlackChannelData::Type::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::SlackChannelData::Type::TaggedSymbol]) }
          def self.values; end
        end

        class Token < Knockapi::Internal::Type::BaseModel
          # A Slack access token.
          sig { returns(T.nilable(String)) }
          attr_accessor :access_token

          # A Slack connection token.
          sig { params(access_token: T.nilable(String)).returns(T.attached_class) }
          def self.new(access_token:); end

          sig { override.returns({access_token: T.nilable(String)}) }
          def to_hash; end
        end

        # The typename of the schema.
        module Typename
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Recipients::SlackChannelData::Typename) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SLACK_CHANNEL_DATA =
            T.let(:SlackChannelData, Knockapi::Models::Recipients::SlackChannelData::Typename::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Recipients::SlackChannelData::Typename::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
