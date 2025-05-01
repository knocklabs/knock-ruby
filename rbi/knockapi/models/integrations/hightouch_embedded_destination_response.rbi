# typed: strong

module Knockapi
  module Models
    module Integrations
      class HightouchEmbeddedDestinationResponse < Knockapi::Internal::Type::BaseModel
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

        sig { params(id: String, result: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
        def self.new(
          # The request ID.
          id: nil,
          # The result of the RPC call.
          result: nil
        ); end
        sig { override.returns({id: String, result: T::Hash[Symbol, T.anything]}) }
        def to_hash; end
      end
    end
  end
end
