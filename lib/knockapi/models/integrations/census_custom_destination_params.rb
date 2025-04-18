# frozen_string_literal: true

module Knockapi
  module Models
    module Integrations
      # @see Knockapi::Resources::Integrations::Census#custom_destination
      class CensusCustomDestinationParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
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

        # @!attribute [r] params
        #   The parameters for the method.
        #
        #   @return [Object, nil]
        optional :params, Knockapi::Internal::Type::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :params

        # @!parse
        #   # @param id [String]
        #   # @param jsonrpc [String]
        #   # @param method_ [String]
        #   # @param params [Object]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(id:, jsonrpc:, method_:, params: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
