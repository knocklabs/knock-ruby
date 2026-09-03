# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class GuideSeenRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute channel_id
        #   The unique identifier for the channel.
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute content
        #   The content of the guide.
        #
        #   @return [Hash{Symbol=>Object}]
        required :content, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

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

        # @!attribute data
        #   The data of the guide.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

        # @!attribute tenant
        #   The tenant ID of the guide.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!method initialize(channel_id:, content:, guide_id:, guide_key:, guide_step_ref:, data: nil, tenant: nil)
        #   A request to mark a guide as seen.
        #
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param content [Hash{Symbol=>Object}] The content of the guide.
        #
        #   @param guide_id [String] The unique identifier for the guide.
        #
        #   @param guide_key [String] The key of the guide.
        #
        #   @param guide_step_ref [String] The step reference of the guide.
        #
        #   @param data [Hash{Symbol=>Object}] The data of the guide.
        #
        #   @param tenant [String] The tenant ID of the guide.
      end
    end
  end
end
