# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#add_subscriptions
      class BulkAddSubscriptionsParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #
        #   @return [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knockapi::ArrayOf[Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription] }

        # @!parse
        #   # @param subscriptions [Array<Knockapi::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(subscriptions:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        class Subscription < Knockapi::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute recipients
          #
          #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          required :recipients, -> { Knockapi::ArrayOf[union: Knockapi::Models::RecipientRequest] }

          # @!attribute properties
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, Knockapi::HashOf[Knockapi::Unknown], nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
          #   # @param properties [Hash{Symbol=>Object}, nil]
          #   #
          #   def initialize(id:, recipients:, properties: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
