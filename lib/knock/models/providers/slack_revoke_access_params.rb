# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class SlackRevokeAccessParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference
        #
        #   @return [String]
        required :access_token_object, String

        # @!parse
        #   # @param access_token_object [String]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(access_token_object:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
