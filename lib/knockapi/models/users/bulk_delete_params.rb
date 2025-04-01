# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class BulkDeleteParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute user_ids
        #
        #   @return [Array<String>]
        required :user_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @param user_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(user_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
