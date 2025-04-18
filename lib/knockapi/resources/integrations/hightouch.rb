# frozen_string_literal: true

module Knockapi
  module Resources
    class Integrations
      class Hightouch
        # Processes a Hightouch embedded destination RPC request.
        #
        # @overload embedded_destination(id:, jsonrpc:, method_:, params: nil, request_options: {})
        #
        # @param id [String]
        # @param jsonrpc [String]
        # @param method_ [String]
        # @param params [Object]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Integrations::HightouchEmbeddedDestinationResponse]
        #
        # @see Knockapi::Models::Integrations::HightouchEmbeddedDestinationParams
        def embedded_destination(params)
          parsed, options = Knockapi::Models::Integrations::HightouchEmbeddedDestinationParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/integrations/hightouch/embedded-destination",
            body: parsed,
            model: Knockapi::Models::Integrations::HightouchEmbeddedDestinationResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
