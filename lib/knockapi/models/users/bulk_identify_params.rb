# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class BulkIdentifyParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute users
        #
        #   @return [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        required :users, -> { Knockapi::ArrayOf[Knockapi::Models::InlineIdentifyUserRequest] }

        # @!parse
        #   # @param users [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(users:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
