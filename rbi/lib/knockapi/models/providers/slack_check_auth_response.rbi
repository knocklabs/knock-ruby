# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackCheckAuthResponse < Knockapi::BaseModel
        sig { returns(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection) }
        attr_reader :connection

        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection, Knockapi::Internal::Util::AnyHash)
          )
            .void
        end
        attr_writer :connection

        # The response from a Slack auth check request
        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::SlackCheckAuthResponse::Connection, Knockapi::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(connection:)
        end

        sig { override.returns({connection: Knockapi::Models::Providers::SlackCheckAuthResponse::Connection}) }
        def to_hash
        end

        class Connection < Knockapi::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :ok

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig { params(ok: T::Boolean, reason: T.nilable(String)).returns(T.attached_class) }
          def self.new(ok:, reason: nil)
          end

          sig { override.returns({ok: T::Boolean, reason: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
