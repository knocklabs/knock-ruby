# frozen_string_literal: true

module Knockapi
  module Resources
    class Integrations
      class Census
        # Processes a Census custom destination RPC request.
        #
        # @overload custom_destination(id:, jsonrpc:, method_:, params: nil, request_options: {})
        #
        # @param id [String] The unique identifier for the RPC request.
        #
        # @param jsonrpc [String] The JSON-RPC version.
        #
        # @param method_ [String] The method name to execute.
        #
        # @param params [Hash{Symbol=>Object}] The parameters for the method.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Integrations::CensusCustomDestinationResponse]
        #
        # @see Knockapi::Models::Integrations::CensusCustomDestinationParams
        def custom_destination(params)
          parsed, options = Knockapi::Integrations::CensusCustomDestinationParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/integrations/census/custom-destination",
            body: parsed,
            model: Knockapi::Models::Integrations::CensusCustomDestinationResponse,
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
