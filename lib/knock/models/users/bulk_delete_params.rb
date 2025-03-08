# frozen_string_literal: true

module Knock
  module Models
    module Users
      class BulkDeleteParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute user_ids
        #
        #   @return [Array<String>]
        required :user_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @param user_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(user_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
