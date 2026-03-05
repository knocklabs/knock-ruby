# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#unarchive
    class MessageUnarchiveParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute message_id
      #
      #   @return [String]
      required :message_id, String

      # @!method initialize(message_id:, request_options: {})
      #   @param message_id [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
