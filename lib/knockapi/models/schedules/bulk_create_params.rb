# frozen_string_literal: true

module Knockapi
  module Models
    module Schedules
      # @see Knockapi::Resources::Schedules::Bulk#create
      class BulkCreateParams < Knockapi::Models::Schedules::BulkCreateSchedulesRequest
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
