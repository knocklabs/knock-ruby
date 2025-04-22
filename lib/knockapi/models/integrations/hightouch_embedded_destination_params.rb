# frozen_string_literal: true

module Knockapi
  module Models
    module Integrations
      # @see Knockapi::Resources::Integrations::Hightouch#embedded_destination
      class HightouchEmbeddedDestinationParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute id
        #   The unique identifier for the RPC request.
        #
        #   @return [String]
        required :id, String

        # @!attribute jsonrpc
        #   The JSON-RPC version.
        #
        #   @return [String]
        required :jsonrpc, String

        # @!attribute method_
        #   The method name to execute.
        #
        #   @return [String]
        required :method_, String, api_name: :method

        # @!attribute params
        #   The parameters for the method.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :params, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!method initialize(id:, jsonrpc:, method_:, params: nil, request_options: {})
        #   @param id [String]
        #   @param jsonrpc [String]
        #   @param method_ [String]
        #   @param params [Hash{Symbol=>Object}]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
