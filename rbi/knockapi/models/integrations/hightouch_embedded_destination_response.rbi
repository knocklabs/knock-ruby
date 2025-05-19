# typed: strong

module Knockapi
  module Models
    module Integrations
      class HightouchEmbeddedDestinationResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Integrations::HightouchEmbeddedDestinationResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # The request ID.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The result of the RPC call.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :result

        sig { params(result: T::Hash[Symbol, T.anything]).void }
        attr_writer :result

        sig do
          params(id: String, result: T::Hash[Symbol, T.anything]).returns(
            T.attached_class
          )
        end
        def self.new(
          # The request ID.
          id: nil,
          # The result of the RPC call.
          result: nil
        )
        end

        sig do
          override.returns({ id: String, result: T::Hash[Symbol, T.anything] })
        end
        def to_hash
        end
      end
    end
  end
end
