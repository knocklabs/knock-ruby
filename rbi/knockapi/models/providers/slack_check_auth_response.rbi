# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A Slack connection object.
        sig do
          returns(
            Knockapi::Models::Providers::SlackCheckAuthResponse::Connection
          )
        end
        attr_reader :connection

        sig do
          params(
            connection:
              Knockapi::Models::Providers::SlackCheckAuthResponse::Connection::OrHash
          ).void
        end
        attr_writer :connection

        # The response from a Slack auth check request.
        sig do
          params(
            connection:
              Knockapi::Models::Providers::SlackCheckAuthResponse::Connection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A Slack connection object.
          connection:
        )
        end

        sig do
          override.returns(
            {
              connection:
                Knockapi::Models::Providers::SlackCheckAuthResponse::Connection
            }
          )
        end
        def to_hash
        end

        class Connection < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

          # Whether the Slack connection is valid.
          sig { returns(T::Boolean) }
          attr_accessor :ok

          # The reason for the Slack connection if it is not valid.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # A Slack connection object.
          sig do
            params(ok: T::Boolean, reason: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Whether the Slack connection is valid.
            ok:,
            # The reason for the Slack connection if it is not valid.
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
