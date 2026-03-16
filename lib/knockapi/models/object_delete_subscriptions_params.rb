# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#delete_subscriptions
    class ObjectDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference] }

      # @!method initialize(collection:, object_id_:, recipients:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::ObjectDeleteSubscriptionsParams} for more details.
      #
      #   @param collection [String]
      #
      #   @param object_id_ [String]
      #
      #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] The recipients of the subscription. You can subscribe up to 100 recipients to an
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
