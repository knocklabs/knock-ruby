# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#merge
    class UserMergeParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] from_user_id
      #
      #   @return [String, nil]
      optional :from_user_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :from_user_id

      # @!parse
      #   # @param from_user_id [String]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(from_user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
