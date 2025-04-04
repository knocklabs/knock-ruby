# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#set_preferences
    class ObjectSetPreferencesParams < Knockapi::Models::Recipients::PreferenceSetRequest
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
