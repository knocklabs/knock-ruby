# frozen_string_literal: true

module Knock
  module Models
    module Users
      class BulkIdentifyParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute users
        #
        #   @return [Array<Knock::Models::InlineIdentifyUserRequest>]
        required :users, -> { Knock::ArrayOf[Knock::Models::InlineIdentifyUserRequest] }

        # @!parse
        #   # @param users [Array<Knock::Models::InlineIdentifyUserRequest>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(users:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
