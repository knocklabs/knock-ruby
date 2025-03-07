# frozen_string_literal: true

module Knock
  module Models
    module Users
      class BulkDeleteParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute body_user_ids
        #
        #   @return [Array<String>]
        required :body_user_ids, Knock::ArrayOf[String], api_name: :user_ids

        # @!parse
        #   # @param body_user_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(body_user_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
