# frozen_string_literal: true

module Knock
  module Models
    class UserMergeParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute from_user_id
      #   The user ID to merge from
      #
      #   @return [String]
      required :from_user_id, String

      # @!parse
      #   # @param from_user_id [String]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(from_user_id:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
