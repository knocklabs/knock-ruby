# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#set_preferences
    class UserSetPreferencesParams < Knockapi::Models::Recipients::PreferenceSetRequest
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
