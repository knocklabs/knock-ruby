# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A Microsoft Teams connection object.
        sig do
          returns(
            Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection
          )
        end
        attr_reader :connection

        sig do
          params(
            connection:
              Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection::OrHash
          ).void
        end
        attr_writer :connection

        # The response from a Microsoft Teams auth check request.
        sig do
          params(
            connection:
              Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A Microsoft Teams connection object.
          connection:
        )
        end

        sig do
          override.returns(
            {
              connection:
                Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection
            }
          )
        end
        def to_hash
        end

        class Connection < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

          # Whether the Microsoft Teams connection is valid.
          sig { returns(T::Boolean) }
          attr_accessor :ok

          # The reason for the Microsoft Teams connection if it is not valid.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # A Microsoft Teams connection object.
          sig do
            params(ok: T::Boolean, reason: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Whether the Microsoft Teams connection is valid.
            ok:,
            # The reason for the Microsoft Teams connection if it is not valid.
            reason: nil
          )
          end

          sig do
            override.returns({ ok: T::Boolean, reason: T.nilable(String) })
          end
          def to_hash
          end
        end
      end
    end
  end
end
