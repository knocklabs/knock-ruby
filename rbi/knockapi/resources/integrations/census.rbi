# typed: strong

module Knockapi
  module Resources
    class Integrations
      class Census
        # Processes a Census custom destination RPC request.
        sig do
          params(
            id: String,
            jsonrpc: String,
            method_: String,
            params: T::Hash[Symbol, T.anything],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(
            Knockapi::Models::Integrations::CensusCustomDestinationResponse
          )
        end
        def custom_destination(
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

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
