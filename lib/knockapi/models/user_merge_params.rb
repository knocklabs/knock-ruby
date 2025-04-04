# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#merge
    class UserMergeParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

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

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
