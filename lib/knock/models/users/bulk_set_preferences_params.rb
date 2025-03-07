# frozen_string_literal: true

module Knock
  module Models
    module Users
      class BulkSetPreferencesParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute preferences
        #   Set preferences for a recipient
        #
        #   @return [Knock::Models::PreferenceSetRequest]
        required :preferences, -> { Knock::Models::PreferenceSetRequest }

        # @!attribute user_ids
        #
        #   @return [Array<String>]
        required :user_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @param preferences [Knock::Models::PreferenceSetRequest]
        #   # @param user_ids [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(preferences:, user_ids:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
