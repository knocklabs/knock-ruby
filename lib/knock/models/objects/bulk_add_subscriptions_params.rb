# frozen_string_literal: true

module Knock
  module Models
    module Objects
      class BulkAddSubscriptionsParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute subscriptions
        #
        #   @return [Array<Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        required :subscriptions,
                 -> { Knock::ArrayOf[Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription] }

        # @!parse
        #   # @param subscriptions [Array<Knock::Models::Objects::BulkAddSubscriptionsParams::Subscription>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(subscriptions:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class Subscription < Knock::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute recipients
          #
          #   @return [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
          required :recipients, -> { Knock::ArrayOf[union: Knock::Models::RecipientRequest] }

          # @!attribute properties
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, Knock::HashOf[Knock::Unknown], nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param recipients [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
          #   # @param properties [Hash{Symbol=>Object}, nil]
          #   #
          #   def initialize(id:, recipients:, properties: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
