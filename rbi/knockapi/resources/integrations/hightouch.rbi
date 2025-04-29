# typed: strong

module Knockapi
  module Resources
    class Integrations
      class Hightouch
        # Processes a Hightouch embedded destination RPC request.
        sig do
          params(
            id: String,
            jsonrpc: String,
            method_: String,
            params: T::Hash[Symbol, T.anything],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Integrations::HightouchEmbeddedDestinationResponse)
        end
        def embedded_destination(
          # The unique identifier for the RPC request.
          id:,
          # The JSON-RPC version.
          jsonrpc:,
          # The method name to execute.
          method_:,
          # The parameters for the method.
          params: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
