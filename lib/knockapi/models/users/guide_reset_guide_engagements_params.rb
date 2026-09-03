# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#reset_guide_engagements
      class GuideResetGuideEngagementsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute guide_key
        #   The key of the guide.
        #
        #   @return [String]
        required :guide_key, String

        # @!attribute tenant
        #   The tenant ID of the guide.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!method initialize(user_id:, guide_key:, tenant: nil, request_options: {})
        #   @param user_id [String]
        #
        #   @param guide_key [String] The key of the guide.
        #
        #   @param tenant [String] The tenant ID of the guide.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
