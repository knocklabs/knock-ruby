# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#add_subscriptions
      class BulkAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #   A list of subscriptions.
        #
        #   @return [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription] }

        # @!parse
        #   # @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(subscriptions:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

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

          # @!parse
          #   # @param id [String]
          #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          #   # @param properties [Hash{Symbol=>Object}, nil]
          #   #
          #   def initialize(id:, recipients:, properties: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
