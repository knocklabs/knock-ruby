# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#get_settings
      class FeedGetSettingsParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
