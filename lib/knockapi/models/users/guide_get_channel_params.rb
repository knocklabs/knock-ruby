# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#get_channel
      class GuideGetChannelParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute [r] data
        #   The data to filter guides by.
        #
        #   @return [String, nil]
        optional :data, String

        # @!parse
        #   # @return [String]
        #   attr_writer :data

        # @!attribute [r] tenant
        #   The tenant ID to filter guides by.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!parse
        #   # @return [String]
        #   attr_writer :tenant

        # @!attribute [r] type
        #   The type of guides to filter by.
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param data [String]
        #   # @param tenant [String]
        #   # @param type [String]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(data: nil, tenant: nil, type: nil, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
