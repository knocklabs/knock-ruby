# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#set_preferences
      class BulkSetPreferencesParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute preferences
        #   Set preferences for a recipient
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetRequest]
        required :preferences, -> { Knockapi::Models::Recipients::PreferenceSetRequest }

        # @!attribute user_ids
        #
        #   @return [Array<String>]
        required :user_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @param preferences [Knockapi::Models::Recipients::PreferenceSetRequest]
        #   # @param user_ids [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(preferences:, user_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
