# frozen_string_literal: true

module Knockapi
  module Models
    class ObjectDeleteParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!parse
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
