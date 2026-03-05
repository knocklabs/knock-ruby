# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#unset_channel_data
    class ObjectUnsetChannelDataParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute object_id_
      #
      #   @return [String]
      required :object_id_, String

      # @!attribute channel_id
      #
      #   @return [String]
      required :channel_id, String

      # @!method initialize(collection:, object_id_:, channel_id:, request_options: {})
      #   @param collection [String]
      #   @param object_id_ [String]
      #   @param channel_id [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
