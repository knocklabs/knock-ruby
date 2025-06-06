# typed: strong

module Knockapi
  module Models
    module Integrations
      class CensusCustomDestinationParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Integrations::CensusCustomDestinationParams,
              Knockapi::Internal::AnyHash
            )
          end

        # The unique identifier for the RPC request.
        sig { returns(String) }
        attr_accessor :id

        # The JSON-RPC version.
        sig { returns(String) }
        attr_accessor :jsonrpc

        # The method name to execute.
        sig { returns(String) }
        attr_accessor :method_

        # The parameters for the method.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :params

        sig { params(params: T::Hash[Symbol, T.anything]).void }
        attr_writer :params

        sig do
          params(
            id: String,
            jsonrpc: String,
            method_: String,
            params: T::Hash[Symbol, T.anything],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the RPC request.
          id:,
          # The JSON-RPC version.
          jsonrpc:,
          # The method name to execute.
          method_:,
          # The parameters for the method.
          params: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              jsonrpc: String,
              method_: String,
              params: T::Hash[Symbol, T.anything],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
