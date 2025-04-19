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
        #   @return [Object, nil]
        optional :result, Knockapi::Internal::Type::Unknown

        # @!method initialize(id: nil, result: nil)
        #   @param id [String]
        #   @param result [Object]
      end
    end
  end
end
