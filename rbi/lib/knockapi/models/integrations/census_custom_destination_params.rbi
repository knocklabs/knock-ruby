# typed: strong

module Knockapi
  module Models
    module Integrations
      class CensusCustomDestinationParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

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
        sig { returns(T.nilable(T.anything)) }
        attr_reader :params

        sig { params(params: T.anything).void }
        attr_writer :params

        sig do
          params(
            id: String,
            jsonrpc: String,
            method_: String,
            params: T.anything,
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(id:, jsonrpc:, method_:, params: nil, request_options: {}); end

        sig do
          override
            .returns(
              {
                id: String,
                jsonrpc: String,
                method_: String,
                params: T.anything,
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
