# frozen_string_literal: true

module Knock
  module Models
    class ObjectAddSubscriptionsParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute recipients
      #   The recipients to subscribe to the object
      #
      #   @return [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      required :recipients, -> { Knock::ArrayOf[union: Knock::Models::RecipientRequest] }

      # @!attribute properties
      #   The custom properties associated with the subscription
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :properties, Knock::HashOf[Knock::Unknown], nil?: true

      # @!parse
      #   # @param collection [String]
      #   # @param recipients [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      #   # @param properties [Hash{Symbol=>Object}, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, recipients:, properties: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
