# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#mark_message_as_interacted
      class GuideMarkMessageAsInteractedParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute channel_id
        #   The unique identifier for the channel.
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute guide_id
        #   The unique identifier for the guide.
        #
        #   @return [String]
        required :guide_id, String

        # @!attribute guide_key
        #   The key of the guide.
        #
        #   @return [String]
        required :guide_key, String

        # @!attribute guide_step_ref
        #   The step reference of the guide.
        #
        #   @return [String]
        required :guide_step_ref, String

        # @!attribute [r] content
        #   The content of the guide.
        #
        #   @return [Object, nil]
        optional :content, Knockapi::Internal::Type::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :content

        # @!attribute [r] data
        #   The data of the guide.
        #
        #   @return [Object, nil]
        optional :data, Knockapi::Internal::Type::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :data

        # @!attribute [r] is_final
        #   Whether the guide is final.
        #
        #   @return [Boolean, nil]
        optional :is_final, Knockapi::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :is_final

        # @!attribute [r] metadata
        #   The metadata of the guide.
        #
        #   @return [Object, nil]
        optional :metadata, Knockapi::Internal::Type::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!attribute tenant
        #   The tenant id of the guide.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(channel_id:, guide_id:, guide_key:, guide_step_ref:, content: nil, data: nil, is_final: nil, metadata: nil, tenant: nil, request_options: {})
        #   @param channel_id [String]
        #   @param guide_id [String]
        #   @param guide_key [String]
        #   @param guide_step_ref [String]
        #   @param content [Object]
        #   @param data [Object]
        #   @param is_final [Boolean]
        #   @param metadata [Object]
        #   @param tenant [String, nil]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
