# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#add_subscriptions
    class ObjectAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients of the subscription.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::ObjectAddSubscriptionsParams::Recipient] }

      # @!attribute properties
      #   The custom properties associated with the recipients of the subscription.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :properties, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!method initialize(recipients:, properties: nil, request_options: {})
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   @param properties [Hash{Symbol=>Object}, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      # Specifies a recipient in a request. This can either be a user identifier
      # (string), an inline user request (object), or an inline object request, which is
      # determined by the presence of a `collection` property.
      module Recipient
        extend Knockapi::Internal::Type::Union

        # The ID of the user.
        variant String

        # A set of parameters to inline-identify a user with. Inline identifying the user will ensure that the user is available before the request is executed in Knock. It will perform an upsert for the user you're supplying, replacing any properties specified.
        variant -> { Knockapi::Models::InlineIdentifyUserRequest }

        # A custom object entity which belongs to a collection.
        variant -> { Knockapi::Models::InlineObjectRequest }

        # @!method self.variants
        #   @return [Array(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
      end
    end
  end
end
