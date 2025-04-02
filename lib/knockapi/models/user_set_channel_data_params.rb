# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#set_channel_data
    class UserSetChannelDataParams < Knockapi::Models::Recipients::ChannelDataRequest
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!parse
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
