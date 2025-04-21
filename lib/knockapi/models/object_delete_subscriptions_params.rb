# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#delete_subscriptions
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients of the subscription.
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      required :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientReference] }

      # @!method initialize(recipients:, request_options: {})
      #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
