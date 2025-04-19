# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Batch#get_content
      class BatchGetContentParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute message_ids
        #   The IDs of the messages to fetch contents of.
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(message_ids:, request_options: {})
        #   @param message_ids [Array<String>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
