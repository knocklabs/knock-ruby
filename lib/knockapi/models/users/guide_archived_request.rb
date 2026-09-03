# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class GuideArchivedRequest < Knockapi::Internal::Type::BaseModel
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

        # @!attribute is_final
        #   Whether the guide is final.
        #
        #   @return [Boolean, nil]
        optional :is_final, Knockapi::Internal::Type::Boolean

        # @!attribute tenant
        #   The tenant ID of the guide.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!attribute unthrottled
        #   Whether the guide bypasses its guide group's throttle settings. When true,
        #   archiving the guide does not open a new throttle window.
        #
        #   @return [Boolean, nil]
        optional :unthrottled, Knockapi::Internal::Type::Boolean

        # @!method initialize(channel_id:, guide_id:, guide_key:, guide_step_ref:, is_final: nil, tenant: nil, unthrottled: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::GuideArchivedRequest} for more details.
        #
        #   A request to mark a guide as archived.
        #
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param guide_id [String] The unique identifier for the guide.
        #
        #   @param guide_key [String] The key of the guide.
        #
        #   @param guide_step_ref [String] The step reference of the guide.
        #
        #   @param is_final [Boolean] Whether the guide is final.
        #
        #   @param tenant [String] The tenant ID of the guide.
        #
        #   @param unthrottled [Boolean] Whether the guide bypasses its guide group's throttle settings. When true, archi
      end
    end
  end
end
