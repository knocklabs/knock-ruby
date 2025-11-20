# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#add_subscriptions
      class BulkAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #   A nested list of subscriptions.
        #
        #   @return [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Objects::BulkAddSubscriptionsParams::Subscription] }

        # @!method initialize(subscriptions:, request_options: {})
        #   @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>] A nested list of subscriptions.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class Subscription < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the object.
          #
          #   @return [String]
          required :id, String

          # @!attribute recipients
          #   The recipients of the subscription. You can subscribe up to 100 recipients to an
          #   object at a time.
          #
          #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientRequest] }

          # @!attribute properties
          #   The custom properties associated with the subscription relationship.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties,
                   Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown],
                   nil?: true

          # @!method initialize(id:, recipients:, properties: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription} for more
          #   details.
          #
          #   A list of subscriptions. 1 subscribed-to id, and N subscriber recipients.
          #
          #   @param id [String] Unique identifier for the object.
          #
          #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients of the subscription. You can subscribe up to 100 recipients to an
          #
          #   @param properties [Hash{Symbol=>Object}, nil] The custom properties associated with the subscription relationship.
        end
      end
    end
  end
end
