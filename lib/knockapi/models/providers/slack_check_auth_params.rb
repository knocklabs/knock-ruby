# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      class SlackCheckAuthParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute access_token_object
        #   A JSON encoded string containing the access token object reference
        #
        #   @return [String]
        required :access_token_object, String

        # @!parse
        #   # @param access_token_object [String]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(access_token_object:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
