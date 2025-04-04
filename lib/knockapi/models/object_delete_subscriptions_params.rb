# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#delete_subscriptions
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientRequest] }

      # @!parse
      #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(recipients:, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
