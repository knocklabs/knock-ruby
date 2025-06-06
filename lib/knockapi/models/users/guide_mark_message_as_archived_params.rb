# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#mark_message_as_archived
      class GuideMarkMessageAsArchivedParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
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

        # @!attribute content
        #   The content of the guide.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :content, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!attribute data
        #   The data of the guide.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!attribute is_final
        #   Whether the guide is final.
        #
        #   @return [Boolean, nil]
        optional :is_final, Knockapi::Internal::Type::Boolean

        # @!attribute metadata
        #   The metadata of the guide.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!attribute tenant
        #   The tenant ID of the guide.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(channel_id:, guide_id:, guide_key:, guide_step_ref:, content: nil, data: nil, is_final: nil, metadata: nil, tenant: nil, request_options: {})
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param guide_id [String] The unique identifier for the guide.
        #
        #   @param guide_key [String] The key of the guide.
        #
        #   @param guide_step_ref [String] The step reference of the guide.
        #
        #   @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        #   @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        #   @param is_final [Boolean] Whether the guide is final.
        #
        #   @param metadata [Hash{Symbol=>Object}] The metadata of the guide.
        #
        #   @param tenant [String, nil] The tenant ID of the guide.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
