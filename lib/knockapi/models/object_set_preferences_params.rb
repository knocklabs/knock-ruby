# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#set_preferences
    class ObjectSetPreferencesParams < Knockapi::Models::Recipients::PreferenceSetRequest
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
