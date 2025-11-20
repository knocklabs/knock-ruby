# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#delete_subscriptions
      class BulkDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #   A nested list of subscriptions.
        #
        #   @return [Array<Knockapi::Models::Objects::BulkDeleteSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Objects::BulkDeleteSubscriptionsParams::Subscription] }

        # @!method initialize(subscriptions:, request_options: {})
        #   @param subscriptions [Array<Knockapi::Models::Objects::BulkDeleteSubscriptionsParams::Subscription>] A nested list of subscriptions.
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
          #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
          required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference] }

          # @!method initialize(id:, recipients:)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Objects::BulkDeleteSubscriptionsParams::Subscription} for
          #   more details.
          #
          #   A list of subscriptions. 1 subscribed-to id, and N subscriber recipients.
          #
          #   @param id [String] Unique identifier for the object.
          #
          #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] The recipients of the subscription. You can subscribe up to 100 recipients to an
        end
      end
    end
  end
end
