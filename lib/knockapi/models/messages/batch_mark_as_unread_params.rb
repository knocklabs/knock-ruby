# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Batch#mark_as_unread
      class BatchMarkAsUnreadParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute message_ids
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @param message_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(message_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
