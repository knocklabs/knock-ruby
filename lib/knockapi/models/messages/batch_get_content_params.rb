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
        #   The IDs of the messages to fetch contents of
        #
        #   @return [Array<Object>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[Knockapi::Internal::Type::Unknown]

        # @!parse
        #   # @param message_ids [Array<Object>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
