# frozen_string_literal: true

module Knock
  module Models
    class UserSetPreferencesParams < Knock::Models::PreferenceSetRequest
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!parse
      #   # @param user_id [String]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(user_id:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
