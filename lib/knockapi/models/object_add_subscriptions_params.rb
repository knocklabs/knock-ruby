# frozen_string_literal: true

module Knockapi
  module Models
    class ObjectAddSubscriptionsParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute recipients
      #   The recipients to subscribe to the object
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::ArrayOf[union: Knockapi::Models::RecipientRequest] }

      # @!attribute properties
      #   The custom properties associated with the subscription
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :properties, Knockapi::HashOf[Knockapi::Unknown], nil?: true

      # @!parse
      #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   # @param properties [Hash{Symbol=>Object}, nil]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(recipients:, properties: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
