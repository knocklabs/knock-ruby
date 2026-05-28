# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Providers::MsTeamCheckAuthResponse,
              Knockapi::Internal::AnyHash
            )
          end

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
            T.type_alias do
              T.any(
                Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection,
                Knockapi::Internal::AnyHash
              )
            end

          # Whether the Microsoft Teams connection is valid.
          sig { returns(T::Boolean) }
          attr_accessor :ok

          # The Microsoft Teams tenant ID for the connected tenant.
          sig { returns(T.nilable(String)) }
          attr_accessor :ms_teams_tenant_id

          # The reason for the Microsoft Teams connection if it is not valid.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # A Microsoft Teams connection object.
          sig do
            params(
              ok: T::Boolean,
              ms_teams_tenant_id: T.nilable(String),
              reason: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the Microsoft Teams connection is valid.
            ok:,
            # The Microsoft Teams tenant ID for the connected tenant.
            ms_teams_tenant_id: nil,
            # The reason for the Microsoft Teams connection if it is not valid.
            reason: nil
          )
          end

          sig do
            override.returns(
              {
                ok: T::Boolean,
                ms_teams_tenant_id: T.nilable(String),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
