# frozen_string_literal: true

module Knockapi
  module Resources
    class Integrations
      class Census
        # Processes a Census custom destination RPC request.
        #
        # @overload custom_destination(id:, jsonrpc:, method_:, params: nil, request_options: {})
        #
        # @param id [String]
        # @param jsonrpc [String]
        # @param method_ [String]
        # @param params [Hash{Symbol=>Object}]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Integrations::CensusCustomDestinationResponse]
        #
        # @see Knockapi::Models::Integrations::CensusCustomDestinationParams
        def custom_destination(params)
          parsed, options = Knockapi::Models::Integrations::CensusCustomDestinationParams.dump_request(params)
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
