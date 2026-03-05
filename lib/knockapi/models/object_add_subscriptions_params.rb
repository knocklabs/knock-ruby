# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#add_subscriptions
    class ObjectAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute object_id_
      #
      #   @return [String]
      required :object_id_, String

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
      optional :properties, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!method initialize(collection:, object_id_:, recipients:, properties: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ObjectAddSubscriptionsParams} for more details.
      #
      #   @param collection [String]
      #
      #   @param object_id_ [String]
      #
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients of the subscription. You can subscribe up to 100 recipients to an
      #
      #   @param properties [Hash{Symbol=>Object}, nil] The custom properties associated with the subscription relationship.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
