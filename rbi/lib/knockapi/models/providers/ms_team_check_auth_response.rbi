# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthResponse < Knockapi::BaseModel
        sig { returns(Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection) }
        def connection
        end

        sig do
          params(_: Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection)
            .returns(Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection)
        end
        def connection=(_)
        end

        sig do
          params(connection: Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection)
            .returns(T.attached_class)
        end
        def self.new(connection:)
        end

        sig { override.returns({connection: Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection}) }
        def to_hash
        end

        class Connection < Knockapi::BaseModel
          sig { returns(T::Boolean) }
          def ok
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def ok=(_)
          end

          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

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
