# frozen_string_literal: true

module Knockapi
  module Models
    module Integrations
      # @see Knockapi::Resources::Integrations::Hightouch#embedded_destination
      class HightouchEmbeddedDestinationResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] id
        #   The request ID.
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] result
        #   The result of the RPC call.
        #
        #   @return [Object, nil]
        optional :result, Knockapi::Internal::Type::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :result

        # @!method initialize(id: nil, result: nil)
        #   @param id [String]
        #   @param result [Object]
      end
    end
  end
end
