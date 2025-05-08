# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackRevokeAccessResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # OK response.
        sig { returns(T.nilable(String)) }
        attr_reader :ok

        sig { params(ok: String).void }
        attr_writer :ok

        # A response indicating the operation was successful.
        sig { params(ok: String).returns(T.attached_class) }
        def self.new(
          # OK response.
          ok: nil
        )
        end

        sig { override.returns({ ok: String }) }
        def to_hash
        end
      end
    end
  end
end
