# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        # A Microsoft Teams connection object.
        sig { returns(Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection) }
        attr_reader :connection

        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :connection

        # The response from a Microsoft Teams auth check request.
        sig do
          params(
            connection: T.any(Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A Microsoft Teams connection object.
          connection:
        ); end
        sig { override.returns({connection: Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection}) }
        def to_hash; end

        class Connection < Knockapi::Internal::Type::BaseModel
          # Whether the Microsoft Teams connection is valid.
          sig { returns(T::Boolean) }
          attr_accessor :ok

          # The reason for the Microsoft Teams connection if it is not valid.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # A Microsoft Teams connection object.
          sig { params(ok: T::Boolean, reason: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # Whether the Microsoft Teams connection is valid.
            ok:,
            # The reason for the Microsoft Teams connection if it is not valid.
            reason: nil
          ); end
          sig { override.returns({ok: T::Boolean, reason: T.nilable(String)}) }
          def to_hash; end
        end
      end
    end
  end
end
