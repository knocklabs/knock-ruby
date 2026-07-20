# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#mark_message_as_archived
      class GuideMarkMessageAsArchivedParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute message_id
        #
        #   @return [String]
        required :message_id, String

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

        # @!method initialize(user_id:, message_id:, channel_id:, guide_id:, guide_key:, guide_step_ref:, is_final: nil, tenant: nil, unthrottled: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::GuideMarkMessageAsArchivedParams} for more details.
        #
        #   @param user_id [String]
        #
        #   @param message_id [String]
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
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
