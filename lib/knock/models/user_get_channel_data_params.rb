# frozen_string_literal: true

module Knock
  module Models
    class UserGetChannelDataParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!parse
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
