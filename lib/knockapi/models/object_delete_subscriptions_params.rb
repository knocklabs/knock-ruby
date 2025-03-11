# frozen_string_literal: true

module Knockapi
  module Models
    class ObjectDeleteSubscriptionsParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute recipients
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::ArrayOf[union: Knockapi::Models::RecipientRequest] }

      # @!parse
      #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(recipients:, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
