# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#add_subscriptions
      class BulkAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #   A list of subscriptions.
        #
        #   @return [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription] }

        # @!method initialize(subscriptions:, request_options: {})
        #   @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class Subscription < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the subscription.
          #
          #   @return [String]
          required :id, String

          # @!attribute recipients
          #   The recipients of the subscription.
          #
          #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientRequest] }

          # @!attribute properties
          #   The custom properties associated with the recipients of the subscription.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties,
                   Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown],
                   nil?: true

          # @!method initialize(id:, recipients:, properties: nil)
          #   @param id [String]
          #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          #   @param properties [Hash{Symbol=>Object}, nil]
        end
      end
    end
  end
end
