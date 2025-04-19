# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::BulkOperations#get
    class BulkOperationGetParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
