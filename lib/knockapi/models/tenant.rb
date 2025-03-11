# frozen_string_literal: true

module Knockapi
  module Models
    class Tenant < Knockapi::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!parse
      #   # A tenant entity
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   #
      #   def initialize(id:, _typename:, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
