# typed: strong

module Knock
  module Models
    module Providers
      class SlackCheckAuthResponse < Knock::BaseModel
        sig { returns(Knock::Models::Providers::SlackCheckAuthResponse::Connection) }
        def connection
        end

        sig do
          params(_: Knock::Models::Providers::SlackCheckAuthResponse::Connection)
            .returns(Knock::Models::Providers::SlackCheckAuthResponse::Connection)
        end
        def connection=(_)
        end

        sig { params(connection: Knock::Models::Providers::SlackCheckAuthResponse::Connection).void }
        def initialize(connection:)
        end

        sig { override.returns({connection: Knock::Models::Providers::SlackCheckAuthResponse::Connection}) }
        def to_hash
        end

        class Connection < Knock::BaseModel
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

          sig { params(ok: T::Boolean, reason: T.nilable(String)).void }
          def initialize(ok:, reason: nil)
          end

          sig { override.returns({ok: T::Boolean, reason: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
