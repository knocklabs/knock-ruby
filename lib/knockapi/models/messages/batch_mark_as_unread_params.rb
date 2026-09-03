# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Batch#mark_as_unread
      class BatchMarkAsUnreadParams < Knockapi::Models::Messages::BatchMessagesStatusRequest
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
