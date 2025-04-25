# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        # A Slack connection object.
        sig { returns(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection) }
        attr_reader :connection

        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :connection

        # The response from a Slack auth check request.
        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A Slack connection object.
          connection:
        ); end
        sig { override.returns({connection: Knockapi::Models::Providers::SlackCheckAuthResponse::Connection}) }
        def to_hash; end

        class Connection < Knockapi::Internal::Type::BaseModel
          # Whether the Slack connection is valid.
          sig { returns(T::Boolean) }
          attr_accessor :ok

          # The reason for the Slack connection if it is not valid.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # A Slack connection object.
          sig { params(ok: T::Boolean, reason: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # Whether the Slack connection is valid.
            ok:,
            # The reason for the Slack connection if it is not valid.
            reason: nil
          ); end
          sig { override.returns({ok: T::Boolean, reason: T.nilable(String)}) }
          def to_hash; end
        end
      end
    end
  end
end
