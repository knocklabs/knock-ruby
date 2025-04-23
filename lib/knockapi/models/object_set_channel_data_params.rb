# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#set_channel_data
    class ObjectSetChannelDataParams < Knockapi::Models::Recipients::ChannelDataRequest
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute object_id_
      #
      #   @return [String]
      required :object_id_, String

      # @!method initialize(object_id_:, request_options: {})
      #   @param object_id_ [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
