# frozen_string_literal: true

module Knockapi
  module Models
    class UserMergeParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute from_user_id
      #   The user ID to merge from
      #
      #   @return [String]
      required :from_user_id, String

      # @!parse
      #   # @param from_user_id [String]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(from_user_id:, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
