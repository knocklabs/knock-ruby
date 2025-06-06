# frozen_string_literal: true

module Knockapi
  module Models
    module Integrations
      # @see Knockapi::Resources::Integrations::Census#custom_destination
      class CensusCustomDestinationParams < Knockapi::Internal::Type::BaseModel
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
        #   @param id [String] The unique identifier for the RPC request.
        #
        #   @param jsonrpc [String] The JSON-RPC version.
        #
        #   @param method_ [String] The method name to execute.
        #
        #   @param params [Hash{Symbol=>Object}] The parameters for the method.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
