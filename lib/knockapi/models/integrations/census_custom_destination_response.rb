# frozen_string_literal: true

module Knockapi
  module Models
    module Integrations
      # @see Knockapi::Resources::Integrations::Census#custom_destination
      class CensusCustomDestinationResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   The request ID.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute result
        #   The result of the RPC call.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :result, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!method initialize(id: nil, result: nil)
        #   @param id [String] The request ID.
        #
        #   @param result [Hash{Symbol=>Object}] The result of the RPC call.
      end
    end
  end
end
