# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#get_channel
      class GuideGetChannelParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute data
        #   The data (JSON encoded object) to use for targeting and rendering guides.
        #
        #   @return [String, nil]
        optional :data, String

        # @!attribute tenant
        #   The tenant ID to use for targeting and rendering guides.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!attribute type
        #   The type of guides to filter by.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(data: nil, tenant: nil, type: nil, request_options: {})
        #   @param data [String]
        #   @param tenant [String]
        #   @param type [String]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
